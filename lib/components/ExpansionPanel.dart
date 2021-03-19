import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/components/CircularStdText.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class ExpansionPanelCustom extends StatefulWidget {
  final List<ExpansionPanelItem> items;

  const ExpansionPanelCustom({Key key, this.items}) : super(key: key);

  @override
  _ExpansionPanelCustomState createState() => _ExpansionPanelCustomState();
}

class _ExpansionPanelCustomState extends State<ExpansionPanelCustom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              widget.items[index].isExpanded = !widget.items[index].isExpanded;
            });
          },
          children: widget.items.map((ExpansionPanelItem item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  leading: item.leading,
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularStdText(
                              value: item.title,
                              textColor: ColorBase.blue,
                              fontType: "bold"),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorBase.forwardColor,
                            size: 12,
                          )
                        ],
                      ),
                      SizedBox(height: Dimension.safeBlockVertical * 1.5),
                      Divider(
                        height: Dimension.safeBlockVertical * 0.8,
                        color: ColorBase.dividerColor,
                      )
                    ],
                  ),
                );
              },
              isExpanded: item.isExpanded,
              body: item.content,
            );
          }).toList(),
        )
      ],
    );
  }
}

class ExpansionPanelItem {
  bool isExpanded;
  final String title;
  final Widget content;
  final Icon leading;

  ExpansionPanelItem({this.isExpanded, this.title, this.content, this.leading});
}
