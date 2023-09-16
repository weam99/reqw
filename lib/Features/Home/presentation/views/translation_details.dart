import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/color_manager.dart';
import '../viewModel/home_cubit/cubit.dart';
import '../viewModel/home_cubit/stats.dart';
import 'widgets/custom_translation_bottom_bar.dart';
import 'widgets/translation_details_Body.dart';

class TranslationDetails extends StatelessWidget {
  const TranslationDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStats>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            color: ColorManager.primary,
            child: SafeArea(
              child: Scaffold(
                body: const TranslationDetailsBody(),
                bottomNavigationBar: CustomTranslationBottomBar(
                  bottombartext: HomeCubit.get(context).currentIndexStep == 3
                      ? "Confirm"
                      : "Next",
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
