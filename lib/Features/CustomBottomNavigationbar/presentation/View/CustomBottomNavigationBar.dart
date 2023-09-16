import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Features/Requests/view/request1.dart';

import '../../../../Core/Function.dart';
import '../../../../Core/Utils/color_manager.dart';
import '../../../../Core/constant.dart';
import '../../../Home/presentation/views/widgets/home_body.dart';
import '../../../Notification/View/Widget/notificationBody.dart';
import '../../../Profile/presentation/View/ProfileScreen.dart';
import '../ViewModel/cubit/cubit.dart';
import '../ViewModel/cubit/state.dart';
import 'Widget/CustomBottomNavigationBarBody.dart';

class CustomBottomNavigationBarScreen extends StatelessWidget {
  const CustomBottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomBottomNavigationBarCubit(),
      child: BlocBuilder<CustomBottomNavigationBarCubit,
          CustomBottomNavigationBarState>(
        builder: (context, state) {
          return Container(
            color: ColorManager.primary,
            child: SafeArea(
              child: Scaffold(
                body:
                    CustomBottomNavigationBarCubit.get(context).selectedIcon ==
                            "Notifications"
                        ? const NotificationBody()
                        : CustomBottomNavigationBarCubit.get(context)
                                    .selectedIcon ==
                                "Profile"
                            ? const ProfileScreen()
                            : CustomBottomNavigationBarCubit.get(context)
                                        .selectedIcon ==
                                    "Home"
                                ? const HomeBody()
                                : const Request1(),
                bottomNavigationBar: bottomNavigationBar(context),
              ),
            ),
          );
        },
      ),
    );
  }

  Material bottomNavigationBar(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.grey,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      child: Container(
        height: isLandScape(context)
            ? getHeight(context) / 5
            : getHeight(context) / 10,
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: const CustomBottomNavigationBarBody(),
      ),
    );
  }
}
