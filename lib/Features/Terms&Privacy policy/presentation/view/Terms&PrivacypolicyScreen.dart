import 'package:flutter/material.dart';
import '../../../../Core/Utils/color_manager.dart';
import '../../../Terms&Privacy%20policy/presentation/view/Widget/TermsPrivacyPolicyBody.dart';

class TermsPrivacyPolicyScreen extends StatelessWidget {
  const TermsPrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primary,
      child: const SafeArea(
        child: Scaffold(
          body: TermsPrivacyPolicyBody(),
        ),
      ),
    );
  }
}
