import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class DropdownFormField<T> extends StatefulWidget {
  final String hint;
  dynamic value;
  final List<dynamic> items;
  final Function onChanged;
  final Function validator;
  final bool autovalidate;
  final Function onSaved;
  dynamic initialValue;
  final theme;
  final bool isEnable;
  final TextStyle textStyle;

  DropdownFormField({
    this.hint,
    dynamic value,
    this.items,
    this.onChanged,
    this.autovalidate,
    this.validator,
    dynamic initialValue,
    this.theme,
    this.isEnable = true,
    this.textStyle,
    this.onSaved,
  }) {
    this.value = items.where((i) => i == value).length > 0 ? value : null;

//    this.initialValue =
//    items.where((i) => i == value).length > 0 ? value : null;
  }

  @override
  State<StatefulWidget> createState() {
    return _DropdownFormField<T>();
  }
}

class _DropdownFormField<T> extends State<DropdownFormField<T>> {
  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      initialValue: widget.initialValue,
      onSaved: (val) => (dynamic newValue) => widget.onSaved(newValue),
      // autovalidate: widget.autovalidate,
      validator: widget.validator,
      enabled: widget.isEnable,
      builder: (FormFieldState<T> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DropdownButtonHideUnderline(
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimension.blockSizeVertical * 1.5,
                    horizontal: Dimension.blockSizeHorizontal * 3),
                decoration: ShapeDecoration(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            state.hasError ? ColorBase.red : Colors.grey[500]),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      brightness: widget.theme == 'dark'
                          ? Brightness.dark
                          : Brightness.light,
                      canvasColor: widget.theme == 'dark'
                          ? Colors.grey[600]
                          : Colors.white),
                  child: DropdownButton(
                    hint: Text(widget.hint,
                        style: TextStyle(
                            color: widget.theme == 'dark'
                                ? Colors.white
                                : Colors.grey[600])),
                    style: (widget.textStyle == null)
                        ? TextStyle(
                            color: (widget.theme == 'dark')
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16.0,
                            decorationColor: widget.theme == 'dark'
                                ? Colors.white
                                : Colors.grey[600])
                        : widget.textStyle,
                    value: widget.value,
                    isDense: true,
                    elevation: 24,
                    isExpanded: true,
                    onChanged: (dynamic newValue) {
                      state.didChange(newValue);
                      widget.onChanged(newValue);
                    },
                    items: widget.items.map((dynamic value) {

                      return DropdownMenuItem<T>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0),
            state.hasError
                ? Padding(
                    padding: EdgeInsets.only(left: Dimension.safeBlockVertical),
                    child: Text(
                      state.hasError ? state.errorText : '',
                      style: TextStyle(color: Colors.red[700], fontSize: 12.0),
                    ),
                  )
                : SizedBox(height: 0)
          ],
        );
      },
    );
  }
}
