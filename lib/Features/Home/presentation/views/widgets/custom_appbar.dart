import 'package:flutter/material.dart';
import '../../../../../Core/Function.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.row});
  final Widget row;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLandScape(context)
          ? getHeight(context) * .23
          : getHeight(context) * .12,
      color: ColorManager.primary,
      child: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 16),
          child: row,
        );
      }),
    );
  }
}
