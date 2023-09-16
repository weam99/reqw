import 'package:flutter/material.dart';

import 'Utils/color_manager.dart';

getHeight(context) => MediaQuery.of(context).size.height;
getWidth(context) => MediaQuery.of(context).size.width;

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmite,
  Function(String)? onChange,
  VoidCallback? onTap,
  bool isPassword = false,
  validate,
  String? label,
  Widget? prefx,
  IconData? suffix,
  VoidCallback? suffixPassword,
  Color? fillcolor,
  bool? isfilled,
  double borderradius = 4.0,
  String hint = " ",
  Color? iconColor,
  Color? textColor,
  Color? labelColor,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      onChanged: onChange,
      onFieldSubmitted: onSubmite,
      validator: validate,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: textColor),
          fillColor: fillcolor,
          filled: isfilled,
          labelText: label,
          labelStyle: TextStyle(color: labelColor),
          prefixIcon: prefx,
          suffixIcon: IconButton(
            onPressed: suffixPassword,
            icon: Icon(
              suffix,
              color: iconColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.whitecontainerbackground)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.white),
              borderRadius: BorderRadius.all(Radius.circular(borderradius)))),
    );
