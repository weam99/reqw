import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Utils/color_manager.dart';
import 'package:rgb_academy/Core/constant.dart';
import 'Widgets/change_password_screen_body.dart';
import '../Views_Model/Change_Password_cubit/change_password_cubit.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: Container(
        color: ColorManager.primary,
        child: SafeArea(
          child: Scaffold(
            body: ChangePasswordScreenBody(),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: getHeight(context) * .09,
                child: Row(
                  children: [
                    buttonBottomSheet(
                        txt: "Cancel",
                        color: ColorManager.grey1,
                        textColor: ColorManager.fontcolor,
                        func: () {
                          Navigator.of(context).pop();
                        }),
                    const SizedBox(
                      width: 8,
                    ),
                    buttonBottomSheet(
                        txt: "Save Changes",
                        color: ColorManager.primary,
                        textColor: ColorManager.white,
                        func: () {
                          Navigator.of(context).pop();
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
