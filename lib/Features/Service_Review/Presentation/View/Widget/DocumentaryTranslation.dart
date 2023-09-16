import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';

class DocumentaryTranslation extends StatelessWidget {
  const DocumentaryTranslation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffF5F5F5), width: 1),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          var localWidth = constraints.maxWidth;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              serviceName(localWidth),
              const SizedBox(
                height: 16,
              ),
              languagesRow(),
              const SizedBox(height: 18),
              industryContainer(localWidth),
            ],
          );
        },
      ),
    );
  }

  Row serviceName(double localWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Documentary translation",
          style: TextStyle(
            fontSize: localWidth / 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.asset(ImageAssets.translateService)
      ],
    );
  }

  Row languagesRow() {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorManager.purple,
          ),
        ),
        Text(
          " Arabic",
          style: TextStyle(
              color: ColorManager.purple,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(SolarIconsOutline.sortHorizontal),
        ),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorManager.pink,
          ),
        ),
        Text(
          " English",
          style: TextStyle(
              color: ColorManager.pink,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ],
    );
  }

  Row industryContainer(double localWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "industry",
          style: TextStyle(
              fontSize: localWidth / 18,
              fontWeight: FontWeight.w500,
              color: ColorManager.primary),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorManager.lightGrey),
          child: const Text(
            "Political",
            style: TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
