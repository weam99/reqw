import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Summary/Presentation/Views/summary_view.dart';
import '../../../../Translation/Presentation/Views/translation_main_view.dart';
import '../../../../Upload_Files/Presentation/Views/upload_files_view.dart';
import '../../views/details_view.dart';
import 'stats.dart';

class HomeCubit extends Cubit<HomeStats> {
  HomeCubit() : super(InitHomeStat());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndexStep = 0;
    int currentIndexTypeSelect = 0;

  final List<Widget> pages = const [
    TranslationMainView(),
    DetailsView(),
    UploadFilesView()  ,
    SummaryView()
  ];
  final List<String> titlePage = [
    '',
    "Translation details",
    "Upload files",
    "Summary",
    //Interpretation Requirement
  ];

  nextStep() {
    if (currentIndexStep >= 3) {
      currentIndexStep = 3;
    } else {
      ++currentIndexStep;
    }
    emit(SteperStat());
  }

  backStep() {
    if (currentIndexStep <= 0) {
      currentIndexStep = 0;
    } else {
      --currentIndexStep;
    }
    emit(SteperStat());
  }

changesegmentedcontrolindex(value) {
    currentIndexTypeSelect = value;
    emit(ChangeTypeTranslation());
  }

}
