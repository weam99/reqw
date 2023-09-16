import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/Utils/color_manager.dart';

class BillPaymentAppBarContent extends StatelessWidget {
  const BillPaymentAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ColorManager.opacityPrimary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: ColorManager.white,
            ),
          ),
        ),
        Text(
          "Bill payment",
          style: TextStyle(fontSize: 24, color: ColorManager.white),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorManager.white),
          ),
          child: SvgPicture.asset(
            ImageAssets.chatIcon,
            width: 22,
            height: 22,
          ),
        )
      ],
    );
  }
}
