library auto_complete_text_view;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zenius_redesign/utils/Validations.dart';
import 'package:rxdart/rxdart.dart';

typedef void OnTapCallback(String value);

class AutoCompleteTextView extends StatefulWidget
    with AutoCompleteTextInterface {
  final double maxHeight;
  final TextEditingController controller;

  //AutoCompleteTextField properties
  final tfCursorColor;
  final tfCursorWidth;
  final tfStyle;
  final tfTextDecoration;
  final tfTextAlign;

  //Suggestiondrop Down properties
  final suggestionStyle;
  final suggestionTextAlign;
  final onTapCallback;
  final Function getSuggestionsMethod;
  final Function focusGained;
  final Function focusLost;
  final int suggestionsApiFetchDelay;
  final Function onValueChanged;

  final List<String> localSuggestion;

  final isValidation;

  AutoCompleteTextView(
      {@required this.controller,
      this.onTapCallback,
      this.maxHeight = 200,
      this.tfCursorColor = Colors.white,
      this.tfCursorWidth = 2.0,
      this.tfStyle = const TextStyle(color: Colors.black),
      this.tfTextDecoration = const InputDecoration(),
      this.tfTextAlign = TextAlign.left,
      this.suggestionStyle = const TextStyle(color: Colors.black),
      this.suggestionTextAlign = TextAlign.left,
      @required this.getSuggestionsMethod,
      this.focusGained,
      this.suggestionsApiFetchDelay = 0,
      this.focusLost,
      this.onValueChanged,
      this.localSuggestion = null,
      this.isValidation = true});

  @override
  _AutoCompleteTextViewState createState() => _AutoCompleteTextViewState();

  //This funciton is called when a user clicks on a suggestion
  @override
  void onTappedSuggestion(String suggestion) {
    onTapCallback(suggestion);
  }
}

class _AutoCompleteTextViewState extends State<AutoCompleteTextView> {
  ScrollController scrollController = ScrollController();
  FocusNode _focusNode = FocusNode();
  OverlayEntry _overlayEntry;
  LayerLink _layerLink = LayerLink();
  final suggestionsStreamController = new BehaviorSubject<List<String>>();
  List<String> suggestionShowList = List<String>();
  Timer _debounce;
  bool isSearching = true;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        this._overlayEntry = this._createOverlayEntry();
        Overlay.of(context).insert(this._overlayEntry);
        (widget.focusGained != null) ? widget.focusGained() : () {};
      } else {
        this._overlayEntry.remove();
        (widget.focusLost != null) ? widget.focusLost() : () {};
      }
    });
    widget.controller.addListener(_onSearchChanged);
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce =
        Timer(Duration(milliseconds: widget.suggestionsApiFetchDelay), () {
      if (isSearching == true) {
        _getSuggestions(widget.controller.text);
      }
    });
  }

  _getSuggestions(String data) async {
//    if (data.length > 0 && data != null) {
    List<String> list = isSearching &&
            (widget.localSuggestion == null ||
                widget.localSuggestion.length < 1)
        ? await widget.getSuggestionsMethod(data)
        : widget.localSuggestion;
    suggestionsStreamController.sink.add(list);

    setState(() {
      isSearching = false;
    });
//    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject();
    var size = renderBox.size;
    return OverlayEntry(
        builder: (context) => Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: this._layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height + 5.0),
                child: Material(
                  elevation: 4.0,
                  child: StreamBuilder<Object>(
                      stream: suggestionsStreamController.stream,
                      builder: (context, suggestionData) {
                        if (suggestionData.hasData && !isSearching) {
                          suggestionShowList = suggestionData.data;
                          return Container(
                            color: Colors.white,
                            child: ConstrainedBox(
                              constraints: new BoxConstraints(
                                maxHeight: 200,
                              ),
                              child: ListView.builder(
                                  controller: scrollController,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: suggestionShowList.length,
                                  itemBuilder: (context, index) {
                                    return (widget.controller.text == null &&
                                            widget.controller.text == "")
                                        ? ListTile(
                                            title: Text(
                                              suggestionShowList[index],
                                              style: widget.suggestionStyle,
                                              textAlign:
                                                  widget.suggestionTextAlign,
                                            ),
                                            onTap: () {
                                              isSearching = false;
                                              widget.controller.text =
                                                  suggestionShowList[index];
                                              suggestionsStreamController.sink
                                                  .add([]);
                                              widget.onTappedSuggestion(
                                                  widget.controller.text);
                                            },
                                          )
                                        : suggestionShowList[index]
                                                .toLowerCase()
                                                .contains(widget.controller.text
                                                    .toLowerCase())
                                            ? ListTile(
                                                title: Text(
                                                  suggestionShowList[index],
                                                  style: widget.suggestionStyle,
                                                  textAlign: widget
                                                      .suggestionTextAlign,
                                                ),
                                                onTap: () {
                                                  isSearching = false;
                                                  widget.controller.text =
                                                      suggestionShowList[index];
                                                  suggestionsStreamController
                                                      .sink
                                                      .add([]);
                                                  widget.onTappedSuggestion(
                                                      widget.controller.text);
                                                },
                                              )
                                            : Container();
                                  }),
                            ),
                          );
                        } else {
                          return Container(
                              color: Colors.white,
                              child: ConstrainedBox(
                                constraints: new BoxConstraints(
                                  maxHeight: 70,
                                ),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              ));
                        }
                      }),
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: this._layerLink,
      child: Stack(
        children: <Widget>[
          TextFormField(
            controller: widget.controller,
            decoration: widget.tfTextDecoration,
            style: widget.tfStyle,
            cursorColor: widget.tfCursorColor,
            cursorWidth: widget.tfCursorWidth,
            textAlign: widget.tfTextAlign,
            focusNode: this._focusNode,
            validator: widget.isValidation ? Validations.emptyValidation : null,
            maxLines: 1,
            onChanged: (text) {
              if (text
                  .trim()
                  .isNotEmpty) {
                try{
                  (widget.onValueChanged != null)
                      ? widget.onValueChanged(text)
                      : () {};
                  isSearching = true;
                  scrollController.animateTo(
                    0.0,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                } catch(e){
                  print(e.toString());
                }
              } else {
                isSearching = false;
                suggestionsStreamController.sink.add([]);
              }
            },
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: GestureDetector(
              child: SizedBox(
                height: 24.0,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey[700],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    suggestionsStreamController.close();
    scrollController.dispose();
//    widget.controller.dispose();
    super.dispose();
  }
}

abstract class AutoCompleteTextInterface {
  void onTappedSuggestion(String suggestion);
}
