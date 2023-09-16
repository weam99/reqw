// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../viewModel/home_cubit/cubit.dart';
import '../../viewModel/home_cubit/stats.dart';

class CustomSteper extends StatelessWidget {
  const CustomSteper({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: height * .2,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor:
                        HomeCubit.get(context).currentIndexStep >= 1
                            ? ColorManager.primary
                            : ColorManager.lightGrey,
                    child: CircleAvatar(
                        radius: 2, backgroundColor: ColorManager.lightGrey),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: HomeCubit.get(context).currentIndexStep > 1
                              ? ColorManager.primary
                              : ColorManager.lightGrey,
                        )),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor:
                        HomeCubit.get(context).currentIndexStep >= 2
                            ? ColorManager.primary
                            : ColorManager.lightGrey,
                    child: CircleAvatar(
                        radius: 2, backgroundColor: ColorManager.white),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: HomeCubit.get(context).currentIndexStep >= 3
                              ? ColorManager.primary
                              : ColorManager.lightGrey,
                        )),
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: HomeCubit.get(context).currentIndexStep == 3
                  ? ColorManager.primary
                  : ColorManager.lightGrey,
              child:
                  CircleAvatar(radius: 2, backgroundColor: ColorManager.white),
            ),
          ]),
        );
      },
    );
  }
}
