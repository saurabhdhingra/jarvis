import 'package:flutter/material.dart';
import '../shared/helpers.dart';
import '../shared/styles.dart';

class InfoText extends StatelessWidget {
  final String title;
  final String info;
  final CustomTextStyle style;
  const InfoText({
    Key? key,
    required this.title,
    required this.info,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = screenWidth(context);
    var height = screenHeight(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(width * 0.06, height * 0.01, 0, 0),
      child: SizedBox(
        height: height * 0.03,
        child: FittedBox(
          child: RichText(
            text: TextSpan(
              text: "$title : ",
              style: style,
              children: [
                TextSpan(
                  text: info,
                  style: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
