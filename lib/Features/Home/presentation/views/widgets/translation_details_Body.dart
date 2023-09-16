// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Function.dart';
import 'package:rgb_academy/Features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:rgb_academy/Features/Home/presentation/views/widgets/custom_translation_appbar_row.dart';
import 'package:rgb_academy/Features/Interpretation_Reqiurements/Presentation/Views/interpretation_requirements.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import '../../viewModel/home_cubit/cubit.dart';
import '../../viewModel/home_cubit/stats.dart';
import 'custom_Steper.dart';

class TranslationDetailsBody extends StatelessWidget {
  const TranslationDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const CustomAppbar(row: CustomTranslationAppBarRow()),
            HomeCubit.get(context).currentIndexStep != 0
                ? SizedBox(
                    height: isLandScape(context)
                        ? getHeight(context) * .25
                        : getHeight(context) * .11,
                    child: LayoutBuilder(
                      builder: (context, constraints) => Stack(children: [
                        Container(
                          height: constraints.maxHeight * .5, //96
                          decoration: BoxDecoration(
                              color: ColorManager.primary,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16)),
                              border: Border.all(color: ColorManager.primary)),
                        ),
                        Align(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: Container(
                                height: constraints.maxHeight,
                                width: isLandScape(context)
                                    ? getWidth(context) * .6
                                    : getWidth(context) * .91,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    CustomSteper(height: constraints.maxHeight),
                                    const Spacer(),
                                    const RowIndexStep()
                                  ],
                                )))
                      ]),
                    ),
                  )
                : Container(),
            Expanded(
              child: SingleChildScrollView(
                child:HomeCubit.get(context).currentIndexTypeSelect==1&&
                HomeCubit.get(context).currentIndexStep==2? const InterpretationRequirement():
                
                HomeCubit.get(context)
                    .pages[HomeCubit.get(context).currentIndexStep],
                //  SizedBox(
                  
                //   height: getHeight(context) * .574,
                //   child: HomeCubit.get(context)
                //       .pages[HomeCubit.get(context).currentIndexStep],
                // ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class RowIndexStep extends StatelessWidget {
  const RowIndexStep({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              HomeCubit.get(context).currentIndexTypeSelect==1&&
                HomeCubit.get(context).currentIndexStep==2? "Interpretation Requirement":
                
              HomeCubit.get(context)
                  .titlePage[HomeCubit.get(context).currentIndexStep],
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              decoration: BoxDecoration(
                  color: ColorManager.whitecontainerbackground,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "${HomeCubit.get(context).currentIndexStep}/3",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        );
      },
    );
  }
}
