import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Function.dart';
import '../../Views_Model/translation_Cubit/translation_main_view_cubit_cubit.dart';

import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import 'custom_industry_container.dart';

class SelectIndustry extends StatelessWidget {
  const SelectIndustry({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TranslationMainViewCubit, TranslationMainViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
          child: SizedBox(
            height: isLandScape(context)
                ? getHeight(context) * .6
                : getHeight(context) * .33,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Industry",
                      style: TextStyle(
                          fontSize: constraints.maxHeight * .07,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w600,
                          color: ColorManager.fontcolor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      // height: constraints.maxHeight * .76,
                      // width: constraints.maxWidth,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(
                                            Industries.academic);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isAcademic
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isAcademic
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isAcademic
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Academic",
                                  icon: ImageAssets.academicboldicon),
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(
                                            Industries.finance);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isFinance
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isFinance
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isFinance
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Finance",
                                  icon: ImageAssets.financeboldicon),
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(
                                            Industries.political);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isPolitical
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isPolitical
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isPolitical
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Political",
                                  icon: ImageAssets.politicalboldicon)
                            ],
                          ),
                          Column(
                            children: [
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(Industries.legal);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isLegal
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isLegal
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isLegal
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Legal",
                                  icon: ImageAssets.legalboldicon),
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(
                                            Industries.medical);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isMedical
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isMedical
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isMedical
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Medical",
                                  icon: ImageAssets.medicalboldicon),
                              CustomIndustryContainer(
                                  onTap: () {
                                    TranslationMainViewCubit.get(context)
                                        .changeIndustryColor(Industries.other);
                                  },
                                  buttonColor:
                                      TranslationMainViewCubit.get(context)
                                              .isOther
                                          ? ColorManager.primary
                                          : ColorManager.industrycontainercolor,
                                  iconColor:
                                      TranslationMainViewCubit.get(context)
                                              .isOther
                                          ? ColorManager.white
                                          : ColorManager.primary,
                                  textColor:
                                      TranslationMainViewCubit.get(context)
                                              .isOther
                                          ? ColorManager.white
                                          : ColorManager.fontcolor,
                                  text: "Other",
                                  icon: ImageAssets.otherboldicon)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
