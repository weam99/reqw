import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../Core/Function.dart';

import '../../../../../Core/constant.dart';

class CustomIndustryContainer extends StatelessWidget {
  const CustomIndustryContainer(
      {super.key,
      required this.text,
      required this.icon,
      this.onTap,
      required this.buttonColor,
      required this.textColor,
      required this.iconColor});
  final String text;
  final String icon;
  final Function()? onTap;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
            child: Container(
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(22)),
              // height: constraints.maxHeight * .41,
              width: isLandScape(context)
                  ? getWidth(context) * .41
                  : getWidth(context) * .43,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: 24,
                    width: 24,
                    color: iconColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 16,
                          color: textColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
