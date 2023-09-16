import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'translation_main_view_cubit_state.dart';

enum Languages { arabic, english, swahili, german, hausa, amharic }

enum Industries { academic, legal, political, finance, medical, other }

class TranslationMainViewCubit extends Cubit<TranslationMainViewState> {
  TranslationMainViewCubit() : super(TranslationMainViewInitial());
  static TranslationMainViewCubit get(context) => BlocProvider.of(context);

  bool isArabic = false;
  bool isEnglish = false;
  bool isSwahili = false;
  bool isHausa = false;
  bool isGerman = false;
  bool isAmharic = false;

  bool isAcademic = false;
  bool isLegal = false;
  bool isMedical = false;
  bool isFinance = false;
  bool isPolitical = false;
  bool isOther = false;

  // int currentIndexTypeSelect = 0;
  int counter = 0;
  changeButtonCOlor(Languages languages) {
    switch (languages) {
      case Languages.arabic:
        isArabic = !isArabic;
        break;
      case Languages.english:
        isEnglish = !isEnglish;
        break;
      case Languages.swahili:
        isSwahili = !isSwahili;
        break;
      case Languages.german:
        isGerman = !isGerman;
        break;
      case Languages.hausa:
        isHausa = !isHausa;
        break;
      case Languages.amharic:
        isAmharic = !isAmharic;
        break;
    }

    emit(TranslationMainViewSuccess());
  }

  changeIndustryColor(Industries industries) {
    switch (industries) {
      case Industries.academic:
        isAcademic = !isAcademic;
        break;
      case Industries.legal:
        isLegal = !isLegal;
        break;
      case Industries.political:
        isPolitical = !isPolitical;
        break;
      case Industries.finance:
        isFinance = !isFinance;
        break;
      case Industries.medical:
        isMedical = !isMedical;
        break;
      case Industries.other:
        isOther = !isOther;
        break;
    }
    emit(TranslationMainViewSuccess());
  }
}
