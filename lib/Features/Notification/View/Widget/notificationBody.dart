import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../Core/Widget/CustomAppBar.dart';
import 'NotificationAppBarContent.dart';
import 'NotificationItem.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarNotification(content: NotificationAppBarContent()),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            physics: const BouncingScrollPhysics(),
            children: const [
              NotificationItem(
                icon: SolarIconsOutline.card,
                text:
                    "The price of your service has been set, you can now pay so that we can complete your service",
              ),
              NotificationItem(
                icon: SolarIconsOutline.handStars,
                text:
                    "Thank you for using one of our services, we hope we performed our service as you expected . You can now rate our service",
              ),
              NotificationItem(
                icon: SolarIconsOutline.card,
                text:
                    "The price of your service has been set, you can now pay so that we can complete your service",
              ),
              NotificationItem(
                icon: SolarIconsOutline.handStars,
                text:
                    "Thank you for using one of our services, we hope we performed our service as you expected . You can now rate our service",
              ),
            ],
          ),
        )
      ],
    );
  }
}
