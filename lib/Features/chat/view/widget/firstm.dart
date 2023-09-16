import 'package:flutter/material.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/constant.dart';

class FirstM extends StatelessWidget {
  const FirstM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return   Row(
      children: [
        SizedBox(
          height:orientation == Orientation.portrait ?  getHeight(context) / 2.9 :  getHeight(context) / 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                ImageAssets.Imageco,
                width:getWidth(context) / 2.0000,
                height: getWidth(context)/ 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Container(
              width: getWidth(context) / 1.2,
              height: orientation == Orientation.portrait
                  ? getHeight(context) / 9
                  : getHeight(context) / 3,
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 16),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFF5F5F5),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
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
                        'That sounds great! I’m in. What time works for you?',
                        style: TextStyle(
                          color: const Color(0xFF0F0D28),
                          fontSize: getWidth(context) / 27,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: getWidth(context) / 1.2,
              height: orientation == Orientation.portrait
                  ? getHeight(context) / 6
                  : getHeight(context) / 2,
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 16),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFF5F5F5),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(2),
                    bottomRight: Radius.circular(16),
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
                          fontSize: getWidth(context) / 27,
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
        )
      ],
    );
  }
}
