import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Views_Model/translation_Cubit/translation_main_view_cubit_cubit.dart';

import 'Widgets/translation_main_view_body.dart';

class TranslationMainView extends StatelessWidget {
  const TranslationMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TranslationMainViewCubit(),
      child:  const TranslationMainViewBody(),
    );
  }
}
