import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import '../../viewModel/home_cubit/cubit.dart';
import '../../viewModel/home_cubit/stats.dart';
import 'custom_translation_bottom_bar_container.dart';

class CustomTranslationBottomBar extends StatelessWidget {
  const CustomTranslationBottomBar({super.key, required this.bottombartext});
  final String bottombartext;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: isLandScape(context)
              ? getHeight(context) * .15
              : getHeight(context) * .11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CustomTranslationBottomBarButton(
                  text: "Back",
                  color: ColorManager.buttongreycolor,
                  fontcolor: ColorManager.fontcolor,
                  onPressed: () {
                    if (HomeCubit.get(context).currentIndexStep == 0) {
                      Navigator.of(context).pop();
                    } else {
                      HomeCubit.get(context).backStep();
                    }
                  },
                ),
              ),
              Expanded(
                child: CustomTranslationBottomBarButton(
                    text: bottombartext,
                    color: ColorManager.primary,
                    fontcolor: Colors.white,
                    onPressed: () {
                      HomeCubit.get(context).nextStep();

                      // if (HomeCubit.get(context).currentIndexStep == 2) {
                      // customAlert(
                      //     context: context,
                      //     title: "We will get in touch with you",
                      //     description:
                      //         "Thank you again for choosing our academy. We look forward to seeing you succeed in your chosen service.",
                      //     image: ImageAssets.successanimation);
                      // customAlert(
                      //     context: context,
                      //     title: "We are sorry the service is not active yet",
                      //     description: "",
                      //     image: ImageAssets.sadanimation);
                      // }
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}
