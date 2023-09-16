import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';

class ProfileOptionContainer extends StatelessWidget {
  const ProfileOptionContainer(
      {super.key, this.icon, required this.txt, this.func});
  final IconData? icon;
  final String txt;
  final void Function()? func;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GestureDetector(
        onTap: func,
        child: Material(
          elevation: .1,
          borderRadius: BorderRadius.circular(8),
          child: Container(
              height: 64,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: ColorManager.lightGrey),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(icon, color: ColorManager.black),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    txt,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: ColorManager.fontcolor,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
