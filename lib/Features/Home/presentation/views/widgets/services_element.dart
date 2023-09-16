import 'package:flutter/material.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class ServicesElment extends StatelessWidget {
  const ServicesElment(
      {super.key,
      required this.title,
      required this.leadingIcon,
      required this.actionIcon,
      this.onTap});
  final String title;
  final void Function()? onTap;
  final String leadingIcon;

  final Widget actionIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        height: isLandScape(context)
            ? getWidth(context) * .08
            : getHeight(context) * .08,
        decoration: BoxDecoration(
            color: ColorManager.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage(leadingIcon)),
                const SizedBox(
                  width: 12,
                ),
                Text(title, style: Theme.of(context).textTheme.headlineMedium!),
              ],
            ),
            actionIcon,
          ],
        ),
      ),
    );
  }
}
