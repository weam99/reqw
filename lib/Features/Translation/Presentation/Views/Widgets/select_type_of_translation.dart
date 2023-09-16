import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Function.dart';
import '../../Views_Model/translation_Cubit/translation_main_view_cubit_cubit.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import 'material_segmented_control.dart';

class SelectTypeOfTranslation extends StatelessWidget {
  const SelectTypeOfTranslation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TranslationMainViewCubit, TranslationMainViewState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: SizedBox(
            height: isLandScape(context)
                ? getHeight(context) * .35
                : getHeight(context) * .2,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Type Of Translation',
                      style: TextStyle(
                          fontSize: constraints.maxHeight * .12,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w600,
                          color: ColorManager.fontcolor),
                    ),
                    // const SizedBox(height: 5),
                    SizedBox(
                        height: constraints.maxHeight * .7,
                        child: const MaterialSegmentControl())
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
