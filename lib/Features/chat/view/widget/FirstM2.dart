import 'package:flutter/material.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/constant.dart';

class firstM2 extends StatelessWidget {
  const firstM2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Orientation orientation = MediaQuery.of(context).orientation;
    return       Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Container(
              width: getWidth(context) / 1.2,
              height: orientation == Orientation.portrait
                  ? getHeight(context) / 6
                  : getHeight(context) / 1.5,
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 16),
              decoration: const ShapeDecoration(
                color: Color(0xFFC4E9FF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFF5F5F5),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(2),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'That sounds great! I’m in. What time works for you?That sounds great! I’m in. What time works for you?That sounds great! I’m in. What time works for you?',
                        style: TextStyle(
                          color: const Color(0xFF0F0D28),
                          fontSize: getWidth(context) / 26,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          height: orientation == Orientation.portrait ?  getHeight(context) / 4.2: getHeight(context) / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(22.0),
                  child: Image.asset(
                    ImageAssets.ImageProfileHome,
                    width: orientation == Orientation.portrait ?  getWidth(context) / 12:   getWidth(context) /19,
                    height: orientation == Orientation.portrait ?  getWidth(context) / 12:   getWidth(context) /19,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
