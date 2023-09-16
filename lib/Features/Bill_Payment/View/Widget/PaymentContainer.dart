import 'package:flutter/material.dart';

import '../../../../Core/Utils/color_manager.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

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
            children: [
              Text(
                "Only",
                style: TextStyle(
                  color: ColorManager.primary,
                  fontSize: localWidth / 14,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "500 USD",
                style: TextStyle(
                    color: ColorManager.darkGreen,
                    fontSize: localWidth / 10,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 30),
              infoRow(localWidth, txt: "Original Price :", money: "600.00 \$"),
              const SizedBox(height: 18),
              infoRow(localWidth, txt: "Discount :", money: "100.00 \$")
            ],
          );
        },
      ),
    );
  }

  Row infoRow(double localWidth, {required String txt, required String money}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: TextStyle(color: ColorManager.grey, fontSize: localWidth / 20),
        ),
        Text(
          money,
          style: TextStyle(fontSize: localWidth / 16),
        )
      ],
    );
  }
}
