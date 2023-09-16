import 'package:flutter/material.dart';

import '../Function.dart';
import '../Utils/color_manager.dart';
import '../constant.dart';

class AppBarNotification extends StatelessWidget {
  const AppBarNotification({super.key, this.content});
  final Widget? content;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:isLandScape(context)?getHeight(context) / 7.5 :getHeight(context) / 8.5,
      width: double.infinity,
      color: ColorManager.primary,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: content,
    );
  }
}