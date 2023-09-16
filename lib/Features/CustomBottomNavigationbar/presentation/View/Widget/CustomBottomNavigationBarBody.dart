import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Function.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../ViewModel/cubit/cubit.dart';
import '../../ViewModel/cubit/state.dart';

class CustomBottomNavigationBarBody extends StatelessWidget {
  const CustomBottomNavigationBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomBottomNavigationBarCubit,
        CustomBottomNavigationBarState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              children: [
                bottombarItem(
                  context,
                  constraints,
                  selectedIcon: SolarIconsBold.home2,
                  unselectedIcon: SolarIconsOutline.home2,
                  txt: "Home",
                ),
                bottombarItem(
                  context,
                  constraints,
                  selectedIcon: SolarIconsBold.clipboardList,
                  unselectedIcon: SolarIconsOutline.clipboardList,
                  txt: "Requests",
                ),
                bottombarItem(
                  context,
                  constraints,
                  selectedIcon: SolarIconsBold.bell,
                  unselectedIcon: SolarIconsOutline.bell,
                  txt: "Notifications",
                ),
                bottombarItem(
                  context,
                  constraints,
                  selectedIcon: SolarIconsBold.user,
                  unselectedIcon: SolarIconsOutline.user,
                  txt: "Profile",
                ),
              ],
            );
          },
        );
      },
    );
  }

  Expanded bottombarItem(BuildContext context, BoxConstraints constraints,
      {required IconData? selectedIcon,
      required IconData? unselectedIcon,
      required String txt}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          CustomBottomNavigationBarCubit.get(context)
              .changeSelectedIcon(newSelect: txt);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomNavigationBarCubit.get(context).selectedIcon == txt
                ? Container(
                    height: constraints.maxHeight / 10,
                    width: constraints.maxWidth / 5,
                    decoration: BoxDecoration(
                      color: ColorManager.primary,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  )
                : Container(),
            const Spacer(),
            CustomBottomNavigationBarCubit.get(context).selectedIcon == txt
                ? Icon(
                    selectedIcon,
                    color: ColorManager.primary,
                    size: constraints.maxHeight / 2.5,
                  )
                : Icon(
                    unselectedIcon,
                    color: ColorManager.grey,
                    size: constraints.maxHeight / 2.5,
                    weight: 10,
                  ),
            const SizedBox(height: 4),
            Text(
              txt,
              style: CustomBottomNavigationBarCubit.get(context).selectedIcon ==
                      txt
                  ? TextStyle(
                      color: ColorManager.primary,
                      fontSize: isLandScape(context)
                          ? constraints.maxWidth / 48
                          : constraints.maxWidth / 26,
                    )
                  : TextStyle(
                      color: ColorManager.grey,
                      fontSize: isLandScape(context)
                          ? constraints.maxWidth / 48
                          : constraints.maxWidth / 26,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
