import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Function.dart';
import 'package:rgb_academy/Core/Utils/color_manager.dart';
import 'package:rgb_academy/Core/constant.dart';
import 'package:rgb_academy/Features/Change_Password/Presentation/Views/Widgets/custom_password_appbar_row.dart';
import 'package:rgb_academy/Features/Change_Password/Presentation/Views_Model/Change_Password_cubit/change_password_cubit.dart';
import 'package:rgb_academy/Features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:solar_icons/solar_icons.dart';

class ChangePasswordScreenBody extends StatelessWidget {
  const ChangePasswordScreenBody({super.key});
  static TextEditingController currentPasswordController =
      TextEditingController();
  static TextEditingController newPasswordController = TextEditingController();
  static TextEditingController renterNewPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const CustomAppbar(row: CustomPasswordAppbarRow()),
            Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: isLandScape(context)
                            ? getHeight(context) * 1.2
                            : getHeight(context) * .7,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: defaultFormField(
                                  borderradius: 8,
                                  controller: currentPasswordController,
                                  type: TextInputType.text,
                                  fillcolor: ColorManager.white,
                                  hint: "Enter Current Password",
                                  label: "Enter Current Password",
                                  isPassword: ChangePasswordCubit.get(context)
                                      .isCurrent,
                                  suffix:
                                      ChangePasswordCubit.get(context).isCurrent
                                          ? SolarIconsOutline.eye
                                          : SolarIconsOutline.eyeClosed,
                                  iconColor: ColorManager.black,
                                  suffixPassword: () {
                                    ChangePasswordCubit.get(context)
                                        .changeIcon(Passwords.current);
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: defaultFormField(
                                  borderradius: 8,
                                  controller: newPasswordController,
                                  type: TextInputType.text,
                                  fillcolor: ColorManager.white,
                                  hint: "Enter New Password",
                                  label: "Enter New Password",
                                  isPassword:
                                      ChangePasswordCubit.get(context).isNew,
                                  suffix: ChangePasswordCubit.get(context).isNew
                                      ? SolarIconsOutline.eye
                                      : SolarIconsOutline.eyeClosed,
                                  iconColor: ColorManager.black,
                                  suffixPassword: () {
                                    ChangePasswordCubit.get(context)
                                        .changeIcon(Passwords.newpass);
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: defaultFormField(
                                  controller: renterNewPasswordController,
                                  type: TextInputType.text,
                                  fillcolor: ColorManager.white,
                                  hint: "Re-Enter New Password",
                                  label: "Re-Enter New Password",
                                  isPassword: ChangePasswordCubit.get(context)
                                      .isReenter,
                                  suffix:
                                      ChangePasswordCubit.get(context).isReenter
                                          ? SolarIconsOutline.eye
                                          : SolarIconsOutline.eyeClosed,
                                  iconColor: ColorManager.black,
                                  suffixPassword: () {
                                    ChangePasswordCubit.get(context)
                                        .changeIcon(Passwords.reenter);
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: SizedBox(
                                  height: getHeight(context) * .07,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        backgroundColor: ColorManager
                                            .forgetPasswordButtonColor,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Forgot Password ?",
                                        style: TextStyle(
                                            color: ColorManager.primary,
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        );
      },
    );
  }
}

Expanded buttonBottomSheet(
    {required String txt,
    required Color color,
    required Color textColor,
    required void Function()? func}) {
  return Expanded(
    child: GestureDetector(
      onTap: func,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
