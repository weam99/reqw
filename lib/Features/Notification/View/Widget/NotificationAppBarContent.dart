import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../Core/Utils/color_manager.dart';

class NotificationAppBarContent extends StatelessWidget {
  const NotificationAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Notifications",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorManager.opacityPrimary,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Icon(
                  SolarIconsOutline.chatRead,
                  color: ColorManager.white,
                ),
                Text(
                  "All as read  ",
                  style: TextStyle(color: ColorManager.white),
                )
              ],
            ),
          )
        ]);
  }
}
