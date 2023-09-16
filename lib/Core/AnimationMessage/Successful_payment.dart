import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Utils/assets_manager.dart';

void successfulPayment(context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,
      title: Lottie.asset(ImageAssets.animatedDone),
      content: Column(
        children: [
          const Text(
            "Successful payment process",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "We will get in touch with you very soon check your email",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
                height: 72,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff0097EC),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "ok",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}
