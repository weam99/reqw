import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import '../../ViewModel/cubit/cubit.dart';
import '../../ViewModel/cubit/state.dart';
import '../SelectedLanguageScreen.dart';

class LanguageContainer extends StatelessWidget {
  const LanguageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              isScrollControlled: true,
              useSafeArea: true,
              context: context,
              builder: (context) => isLandScape(context)
                  ? const SelectedLanguageScreen()
                  : SizedBox(
                      height: getHeight(context) <= 640
                          ? getHeight(context) / 1.5
                          : getHeight(context) / 1.8,
                      child: const SelectedLanguageScreen(),
                    ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Material(
              elevation: .1,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  height: 64,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: ColorManager.lightGrey),
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
                        child: Icon(SolarIconsOutline.global,
                            color: ColorManager.black),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Language",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        ProfileCubit.get(context).setFlag(),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        ProfileCubit.get(context).appLanguage,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      )
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
