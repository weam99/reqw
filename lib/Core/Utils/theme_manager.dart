import 'package:flutter/material.dart';

import 'color_manager.dart';

// import 'font_manager.dart';
ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    // primaryColorLight: ColorManager.lightPrimary,
    // primaryColorDark: ColorManager.darkPrimary,
    // disabledColor: ColorManager.grey1,
    // splashColor: ColorManager.lightPrimary,

    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: 4),
    // button theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //     disabledColor: ColorManager.grey1,
    //     buttonColor: ColorManager.primary,
    //     splashColor: ColorManager.lightPrimary),
    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            // textStyle: getRegularStyle(
            //     color: ColorManager.white, fontSize: FontSize.s17),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
    // text theme
    textTheme: TextTheme(
      // displayLarge: getSemiBoldStyle(
      //     color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headlineLarge: TextStyle(
          fontFamily: "Manrope",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ColorManager.textColor),
      headlineMedium: TextStyle(
          fontFamily: "Manrope",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: ColorManager.textColor),
      headlineSmall: TextStyle(
          fontFamily: "Manrope", fontSize: 12, color: ColorManager.textColor),
    ),

    // titleMedium:
    //     getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
    // titleSmall:
    //     getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    // bodyLarge: getRegularStyle(color: ColorManager.grey1),
    // bodySmall: getRegularStyle(color: ColorManager.grey),
    // bodyMedium:
    //     getRegularStyle(color: ColorManager.grey2, fontSize: FontSize.s12),
    // labelSmall:
    //     getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s12)),

    // // input decoration theme (text form field)
    // inputDecorationTheme: InputDecorationTheme(
    //     // content padding
    //     contentPadding: const EdgeInsets.all(AppPadding.p8),
    //     // hint style
    //     hintStyle:
    //         getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
    //     labelStyle:
    //         getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
    //     errorStyle: getRegularStyle(color: ColorManager.error),
    //     // enabled border style
    //     enabledBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    //     // focused border style
    //     focusedBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    //     // error border style
    //     errorBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.error, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    //     // focused border style
    //     focusedErrorBorder: OutlineInputBorder(
    //         borderSide:
    //             BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
    //         borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // label style
  );
}
