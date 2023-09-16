import 'package:flutter/material.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/constant.dart';

class FirstM_SecondMessage extends StatelessWidget {
  const FirstM_SecondMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return   Row(
      mainAxisAlignment:  MainAxisAlignment.start,
      children: [
        SizedBox(
          height:orientation == Orientation.portrait ?  getHeight(context) / 2.9 :  getHeight(context) /3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                ImageAssets.Imageco,
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
              width: orientation == Orientation.portrait
                  ? getWidth(context) / 1.6
                  : getWidth(context) / 1.4,
              height: orientation == Orientation.portrait
                  ? getHeight(context) / 5.5
                  : getHeight(context) / 2,
              padding: const EdgeInsets.only(top: 6),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: orientation == Orientation.portrait
                        ? getWidth(context) / 1.6
                        : getWidth(context) / 1.4,
                    height: orientation == Orientation.portrait
                        ? getHeight(context) / 6
                        : getHeight(context) / 2.5,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(1),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: Image.asset(ImageAssets.Imageimage),
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
