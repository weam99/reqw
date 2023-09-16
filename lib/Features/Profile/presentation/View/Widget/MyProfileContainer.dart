import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';

class MyProfileContainer extends StatelessWidget {
  const MyProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: .5,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 88,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorManager.lightGrey),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://usindo.org/assets/up/2018/09/unknown.jpg",
                height: 56,
                width: 56,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ahmed Mabrouk",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "mabrouka154@gmail.com",
                  style: TextStyle(fontSize: 14, color: ColorManager.grey),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: ColorManager.lightGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                alignment: const Alignment(0, 0),
                children: [
                  Icon(
                    SolarIconsBold.settings,
                    color: ColorManager.grey,
                  ),
                  Container(
                    height: 7.3,
                    width: 7.3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff100E28),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
