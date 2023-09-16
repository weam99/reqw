import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Utils/assets_manager.dart';

void sorry(context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      scrollable: true,
      title: Lottie.asset(ImageAssets.animatedSadFace),
      content: Column(children: [
        const Text(
          "We are sorry the service is not active yet",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "you can leave your email and we will send you an alert as soon as it is activated",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Color(0xff2B3A70)),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        sorryTextField(),
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
        )
      ]),
    ),
  );
}

TextField sorryTextField() {
  return const TextField(
        cursorColor: Color(0xff0097EC),
        decoration: InputDecoration(
            hintText: "email@email.com",
            hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xffCECECE)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCECECE), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCECECE), width: 2),
            )),
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
