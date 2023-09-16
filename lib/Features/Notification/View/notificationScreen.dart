import 'package:flutter/material.dart';

import '../../../Core/Utils/color_manager.dart';
import 'Widget/notificationBody.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primary,
      child: const SafeArea(
        child: Scaffold(
          body: NotificationBody(),
        ),
      ),
    );
  }
}
