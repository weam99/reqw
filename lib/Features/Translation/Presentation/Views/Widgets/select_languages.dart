import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Views_Model/translation_Cubit/translation_main_view_cubit_cubit.dart';

import '../../../../../Core/Utils/color_manager.dart';
import 'custom_language_container.dart';

class SelectLanguages extends StatelessWidget {
  const SelectLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TranslationMainViewCubit, TranslationMainViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          // height: getHeight(context) * .35,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Two Languages',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w600,
                      color: ColorManager.fontcolor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isEnglish
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isEnglish
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(
                              Languages.english,
                            );
                          },
                          text: "English",
                        ),
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isSwahili
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isSwahili
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(Languages.swahili);
                          },
                          text: "Swahili",
                        ),
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isAmharic
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isAmharic
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(Languages.amharic);
                          },
                          text: "Amharic",
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isHausa
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isHausa
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          text: "Hausa",
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(Languages.hausa);
                          },
                        ),
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isGerman
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isGerman
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          text: "German",
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(Languages.german);
                          },
                        ),
                        CustomLanguageContainer(
                          buttonColor:
                              TranslationMainViewCubit.get(context).isArabic
                                  ? ColorManager.primary
                                  : ColorManager.white,
                          textColor:
                              TranslationMainViewCubit.get(context).isArabic
                                  ? ColorManager.white
                                  : ColorManager.fontcolor,
                          onTap: () {
                            TranslationMainViewCubit.get(context)
                                .changeButtonCOlor(Languages.arabic);
                          },
                          text: "Arabic",
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
