import 'package:flutter/material.dart';

import '../../../../../Core/AnimationMessage/Successful_payment.dart';
import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class PublishReviewContainer extends StatelessWidget {
  const PublishReviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.grey,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      child: Container(
        height: isLandScape(context)
            ? getHeight(context) / 5.5
            : getHeight(context) / 9,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            var localHeight = constraints.maxHeight;
            return GestureDetector(
              onTap: () {
                successfulPayment(context);
              },
              child: Container(
                height: localHeight / 1.5,
                decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Publish Review",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
