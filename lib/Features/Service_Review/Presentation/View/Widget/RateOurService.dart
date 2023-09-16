import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';

class RateOurService extends StatelessWidget {
  const RateOurService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            "https://usindo.org/assets/up/2018/09/unknown.jpg",
            height: 96,
            width: 96,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 34,
          width: 218,
          child: Text(
            "Hello Ahmad, can you rate our service please",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorManager.grey),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
