import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../viewModel/home_cubit/cubit.dart';
import '../../viewModel/home_cubit/stats.dart';

class CustomTranslationAppBarRow extends StatelessWidget {
  const CustomTranslationAppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: constraints.maxHeight * .75,
                    width: constraints.maxHeight * .75,
                    decoration: BoxDecoration(
                        color: ColorManager.opacityPrimary,
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                        onPressed: () {
                          if (HomeCubit.get(context).currentIndexStep == 0) {
                            Navigator.of(context).pop();
                          } else {
                            HomeCubit.get(context).backStep();
                          }
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: constraints.maxHeight * .4,
                        )),
                  ),
                  AutoSizeText(
                    'Translation',
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 24,
                      color: ColorManager.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * .75,
                    width: constraints.maxHeight * .75,
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
