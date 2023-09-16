import 'package:flutter/material.dart';

class ProfileAppbarContent extends StatelessWidget {
  const ProfileAppbarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "My Profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
