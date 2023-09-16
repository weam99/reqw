import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/Utils/color_manager.dart';
import 'package:rgb_academy/Core/constant.dart';

class AppBarRequst extends StatelessWidget {
  const AppBarRequst({super.key, this.content});
  final Widget? content;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      height:orientation == Orientation.portrait?getHeight(context) / 8 :getHeight(context) / 4,
      color: ColorManager.primary,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: content,
    );
  }
}
