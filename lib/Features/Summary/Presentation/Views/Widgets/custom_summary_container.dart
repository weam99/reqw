import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';

class CustomSummaryContainer extends StatelessWidget {
  const CustomSummaryContainer({super.key, required this.row});
  final Widget row;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: row,
      ),
    );
  }
}
