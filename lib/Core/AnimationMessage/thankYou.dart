import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Utils/assets_manager.dart';

void thankYou(context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      backgroundColor: Colors.white,
      scrollable: true,
      title: Lottie.asset(ImageAssets.animatedDone),
      content: Column(
        children: [
          const Text(
            "We will get in touch with you very soon check your email",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Thank you again for choosing our academy. We look forward to seeing you succeed in your chosen service.",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Color(0xff2B3A70),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
            },
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
