import 'package:flutter/material.dart';

import '../../../../Core/Utils/color_manager.dart';
import 'Widget/ServiceReviewBody.dart';

class ServiceReviewScreen extends StatelessWidget {
  const ServiceReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primary,
      child: const SafeArea(
        child: Scaffold(
          body: ServiceReviewBody(),
        ),
      ),
    );
  }
}
