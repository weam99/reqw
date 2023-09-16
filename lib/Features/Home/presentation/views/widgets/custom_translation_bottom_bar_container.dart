import 'package:flutter/material.dart';

import '../../../../../Core/Function.dart';

class CustomTranslationBottomBarButton extends StatelessWidget {
  const CustomTranslationBottomBarButton({
    super.key,
    required this.text,
    required this.color,
    required this.fontcolor,
    required this.onPressed,
  });
  final String text;
  final Color color;
  final Color fontcolor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: SizedBox(
              height: isLandScape(context)
                  ? constraints.maxHeight * .95
                  : constraints.maxHeight * .7,
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: constraints.maxHeight * .2, color: fontcolor),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
