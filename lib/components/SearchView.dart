import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenius_redesign/constants/Colors.dart';
import 'package:zenius_redesign/constants/FontsFamily.dart';
import 'package:zenius_redesign/utils/Dimension.dart';

class SearchView extends StatelessWidget {

  final TextEditingController searchEDC;

  SearchView(this.searchEDC);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      controller: searchEDC,
      showCursor: true,
      cursorColor: ColorBase.blue,
      keyboardType: TextInputType.text,
      onChanged: (value) {},
      onSubmitted: (value) {
        // Navigator.of(context)
        //     .pushNamed(NavigationConstant.Products, arguments: [
        //   null,
        //   value
        // ]).then((value) => _homeBloc.add(GetCarts()));
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          filled: true,
          hintText: "Cari",
          hintStyle: TextStyle(
              fontFamily: FontsFamily.circularStd,
              fontWeight: FontWeight.w400,
              fontSize: 12),
          fillColor: Colors.grey[200],
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[100]),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          prefixIcon: Icon(
            Icons.search,
            size: (Dimension.safeBlockVertical) *
                (Dimension.safeBlockHorizontal * 0.8),
          )),
    );
  }
}
