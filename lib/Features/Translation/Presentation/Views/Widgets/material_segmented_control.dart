import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Home/presentation/viewModel/home_cubit/cubit.dart';
import '../../../../Home/presentation/viewModel/home_cubit/stats.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';

class MaterialSegmentControl extends StatelessWidget {
  const MaterialSegmentControl({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
                height: constraints.maxHeight * .8,
                alignment: Alignment.center,
                // padding: EdgeInsets.all(10),
                child: CupertinoSlidingSegmentedControl<int>(
                  padding: const EdgeInsets.all(4),
                  backgroundColor: ColorManager.buttongreycolor,
                  thumbColor: CupertinoColors.white,
                  // padding: EdgeInsets.all(8),
                  groupValue: HomeCubit.get(context).currentIndexTypeSelect,
                  children: {
                    0: buildSegment(
                        "Translation",
                        Icon(
                          SolarIconsOutline.documentAdd,
                          color: ColorManager.fontcolor,
                        )),
                    1: buildSegment(
                        "interpretaion",
                        Icon(SolarIconsOutline.dialog,
                            color: ColorManager.fontcolor)),
                  },
                  onValueChanged: (value) {
                    HomeCubit.get(context).changesegmentedcontrolindex(value);
                  },
                ));
          },
        );
      },
    );
  }
}

Widget buildSegment(String text, Icon icon) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Text(
          text,
          style: TextStyle(
              fontFamily: "Manrope",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: ColorManager.fontcolor),
        ),
      ],
    ),
  );
}
