import 'package:flutter/material.dart';
import '../../../../../Core/Utils/color_manager.dart';

class TermsPrivacyPolicyAppBarContent extends StatelessWidget {
  const TermsPrivacyPolicyAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorManager.opacityPrimary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: ColorManager.white,
            ),
          ),
        ),
        const Spacer(flex: 2),
        Text(
          "Terms & Privacy policy",
          style: TextStyle(fontSize: 24, color: ColorManager.white),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
