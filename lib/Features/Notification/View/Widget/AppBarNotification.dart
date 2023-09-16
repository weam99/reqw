import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/Utils/color_manager.dart';
import 'package:rgb_academy/Core/constant.dart';

class AppBarNotification extends StatelessWidget {
  const AppBarNotification({super.key, this.content});
  final Widget? content;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context) / 8,
      color: ColorManager.primary,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: content,
    );
  }
}
