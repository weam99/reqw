import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: getHeight(context) * .066,
      child: DottedBorder(
          dashPattern: const [8, 4],
          strokeWidth: 2,
          borderType: BorderType.RRect,
          padding: const EdgeInsets.all(24),
          radius: const Radius.circular(8),
          borderPadding: const EdgeInsets.all(8),
          color: ColorManager.dottedcontainercolor,
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  SolarIconsBold.uploadMinimalistic,
                  color: ColorManager.green,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Upload Files",
                  style: TextStyle(color: ColorManager.green),
                )
              ],
            ),
          )),
    );
  }
}
