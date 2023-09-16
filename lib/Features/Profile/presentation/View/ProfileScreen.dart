import 'package:flutter/material.dart';

import '../../../../Core/Utils/color_manager.dart';
import 'Widget/ProfileBody.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primary,
      child: const SafeArea(
        child: Scaffold(
          body: ProfileBody(),
        ),
      ),
    );
  }
}
