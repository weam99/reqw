import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Utils/assets_manager.dart';

void signOutPop(context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,
      title: Lottie.asset(ImageAssets.animatedSadFace),
      content: Column(
        children: [
          const Text(
            "Are you sure you are logged out",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 10,
                  child: GestureDetector(
                    child: Sign_outContainer(),
                  )),
              const Spacer(),
              Expanded(
                flex: 10,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: CancelButton(),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container Sign_outContainer() {
  return Container(
    height: 72,
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        width: 2,
        color: const Color(0xff0097EC),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Text(
      "Sign out",
      style: TextStyle(
        color: Color(0xff0097EC),
        fontSize: 20,
      ),
    ),
  );
}

Container CancelButton() {
  return Container(
    height: 72,
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xff0097EC),
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Text(
      "Cancel",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}
