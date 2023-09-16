import 'package:flutter/material.dart';

import '../../../../Core/Function.dart';
import '../../../../Core/Utils/color_manager.dart';
import '../../../../Core/constant.dart';
import '../../../Service_Review/Presentation/View/ServiceReviewScreen.dart';

class ConfirmContainer extends StatelessWidget {
  const ConfirmContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.grey,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      child: Container(
        height: isLandScape(context)
            ? getHeight(context) / 5.5
            : getHeight(context) / 9,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            var localHeight = constraints.maxHeight;
            return Row(
              children: [
                Expanded(
                  child: buttonContainer(
                    localHeight,
                    txt: "Back",
                    color: ColorManager.grey1,
                    txtColor: ColorManager.black,
                    func: () {
                      print("Back");
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    flex: 3,
                    child: buttonContainer(
                      localHeight,
                      txt: "Confirm",
                      color: ColorManager.primary,
                      func: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ServiceReviewScreen(),
                        ));
                      },
                    ))
              ],
            );
          },
        ),
      ),
    );
  }

  GestureDetector buttonContainer(double localHeight,
      {required String txt,
      required Color color,
      Color txtColor = Colors.white,
      required void Function()? func}) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: localHeight / 1.5,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: txtColor),
          ),
        ),
      ),
    );
  }
}
