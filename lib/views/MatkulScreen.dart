import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:zenius_redesign/utils/ColorUtils.dart';

class MatkulScreen extends StatelessWidget {
  final String title;

  const MatkulScreen({Key key, @required this.title = "Title Pelajaran"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.fromHex("#843EA8"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 24),
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width * 0.6,
              animation: true,
              lineHeight: 5.0,
              animationDuration: 2000,
              percent: 0.25,
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: ColorUtils.fromHex("#7A1FA2"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "25% proses pembelajaran",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
