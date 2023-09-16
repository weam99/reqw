import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Views_Model/translation_Cubit/translation_main_view_cubit_cubit.dart';
import 'select_industry.dart';
import 'select_languages.dart';
import 'select_type_of_translation.dart';
import 'translation_service.dart';

class TranslationMainViewBody extends StatelessWidget {
  const TranslationMainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TranslationMainViewCubit, TranslationMainViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TranslationService(),
              SelectTypeOfTranslation(),
              SelectLanguages(),
              SelectIndustry()
            ],
          ),
        );
      },
    );
  }
}
