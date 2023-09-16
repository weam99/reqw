import 'package:flutter/material.dart';

import '../../../../../Core/constant.dart';

class CustomLanguageContainer extends StatelessWidget {
  const CustomLanguageContainer(
      {super.key,
      required this.text,
      this.onTap,
      required this.buttonColor,
      required this.textColor});
  final String text;
  final Function()? onTap;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(8)),
          height: 44,
          width: getWidth(context) * .43,
          child: Center(
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
        ),
      ),
    );
  }
}


  // return SizedBox(
    //   width: getWidth(context) * .43,
    //   child: ElevatedButton(
    //     onPressed: () {},
    //     style: ButtonStyle(
    //       backgroundColor: MaterialStateProperty.resolveWith<Color>(
    //         (Set<MaterialState> states) {
    //           if (states.contains(MaterialState.pressed)) {
    //             return ColorManager
    //                 .primary; // Set the desired color when pressed
    //           }
    //           return ColorManager.white; // Set the default color
    //         },
    //       ),
    //       overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    //     ),
    //     child: Text(text,
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //             fontFamily: "Manrope",
    //             fontSize: 16,
    //             color: ColorManager.fontcolor)),
    //   ),
    // );