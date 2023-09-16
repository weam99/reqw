import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Core/Function.dart';
import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/Utils/color_manager.dart';
import '../../../../Core/constant.dart';
import '../ViewModel/cubit/cubit.dart';
import '../ViewModel/cubit/state.dart';

class SelectedLanguageScreen extends StatelessWidget {
  const SelectedLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 3,
                width: getWidth(context) / 2.5,
                decoration: BoxDecoration(
                  color: ColorManager.grey2,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                flex: 24,
                child: ListView(
                  physics: isLandScape(context)
                      ? const BouncingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  children: [
                    const Text(
                      "Choose the language",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    languageItemContainer(
                      context,
                      language: "English",
                      flag: ImageAssets.usaFlag,
                    ),
                    languageItemContainer(
                      context,
                      language: "العربية",
                      flag: ImageAssets.egyptFlag,
                    ),
                    languageItemContainer(
                      context,
                      language: "German",
                      flag: ImageAssets.germanyFlag,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  buttonBottomSheet(
                    txt: "Cancel",
                    color: ColorManager.grey1,
                    textColor: ColorManager.fontcolor,
                    func: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  buttonBottomSheet(
                    txt: "Confirm",
                    color: ColorManager.primary,
                    textColor: ColorManager.white,
                    func: () {
                      ProfileCubit.get(context).setAppLanguage();
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: ProfileCubit.get(context).appLanguage ==
                                  "English"
                              ? const Text("Change Language To English")
                              : ProfileCubit.get(context).appLanguage ==
                                      "العربية"
                                  ? const Text("تغيير اللغة إلى العربية")
                                  : ProfileCubit.get(context).appLanguage ==
                                          "German"
                                      ? const Text(
                                          "Ändere die Sprache auf Deutsch")
                                      : Container(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Expanded buttonBottomSheet(
      {required String txt,
      required Color color,
      required Color textColor,
      required void Function()? func}) {
    return Expanded(
      child: GestureDetector(
        onTap: func,
        child: Container(
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Text(
            txt,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector languageItemContainer(context,
      {required String language, required String flag}) {
    return GestureDetector(
      onTap: () {
        ProfileCubit.get(context).changeLanguage(newLanguage: language);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 64,
          padding: const EdgeInsets.all(10),
          decoration: ProfileCubit.get(context).selectedLanguage == language
              ? BoxDecoration(
                  border: Border.all(color: ColorManager.primary, width: 2),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 200, 225, 245))
              : BoxDecoration(
                  border: Border.all(color: ColorManager.grey1, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
          child: Row(
            children: [
              SvgPicture.asset(
                flag,
              ),
              const SizedBox(width: 6),
              Text(
                language,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.textColor),
              ),
              const Spacer(),
              ProfileCubit.get(context).selectedLanguage == language
                  ? selectedIcon()
                  : unSelectedIcon()
            ],
          ),
        ),
      ),
    );
  }

  Container unSelectedIcon() {
    return Container(
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorManager.grey1, width: 2),
      ),
    );
  }

  Container selectedIcon() {
    return Container(
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.primary,
      ),
      child: const Icon(
        Icons.check,
        size: 16,
      ),
    );
  }
}
