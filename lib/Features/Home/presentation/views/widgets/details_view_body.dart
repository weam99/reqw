import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class DetailsViewBody extends StatelessWidget {
  DetailsViewBody({super.key});
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * .59,
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(
            top: getHeight(context) * .03,
            left: getHeight(context) * .02,
            right: getHeight(context) * .01,
          ),
          child: Column(
            children: [
              DocumentaryTranslation(
                height: constraints.maxHeight,
              ),
              /////////////////////////////////////////////////////////////////////
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: getHeight(context) * .05),
                  child: Column(
                    children: [
                      defaultFormField(
                          controller: namecontroller,
                          type: TextInputType.text,
                          labelColor: ColorManager.lightgreylabel,
                          label: 'Name',
                          suffix: SolarIconsOutline.pen2,
                          iconColor: ColorManager.primary),
                      const SizedBox(
                        height: 15,
                      ),
                      defaultFormField(
                          controller: emailcontroller,
                          type: TextInputType.emailAddress,
                          labelColor: ColorManager.lightgreylabel,
                          label: 'Email',
                          suffix: SolarIconsOutline.pen2,
                          iconColor: ColorManager.primary),
                      const SizedBox(
                        height: 15,
                      ),
                      defaultFormField(
                          controller: phonecontroller,
                          labelColor: ColorManager.lightgreylabel,
                          type: TextInputType.number,
                          label: 'Phone',
                          suffix: SolarIconsOutline.pen2,
                          iconColor: ColorManager.primary,
                          prefx: const CountryPicker()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DocumentaryTranslation extends StatelessWidget {
  const DocumentaryTranslation({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLandScape(context) ? height * .5 : height * .4,
      padding: EdgeInsets.all(getHeight(context) * .02),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                "Documentary Translation",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Image(
                width: height * .07,
                height: height * .07,
                image: const AssetImage(
                  ImageAssets.translateImage,
                ),
              )
            ],
          ),
          Row(
            children: [
              AutoSizeText(
                "• Arabic",
                style: TextStyle(
                    color: ColorManager.purple,
                    fontFamily: "Manrope",
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                SolarIconsBold.sortHorizontal,
                color: ColorManager.fontcolor,
                size: 16,
              ),
              AutoSizeText(
                "• English",
                style: TextStyle(
                    color: ColorManager.pink,
                    fontFamily: "Manrope",
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                "Industry",
                style: TextStyle(
                    color: ColorManager.primary,
                    fontFamily: "Manrope",
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManager.buttongreycolor,
                    borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    "Political",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CountryPicker extends StatelessWidget {
  const CountryPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      showDropDownButton: true,
      onChanged: (country) {},
      initialSelection: '+20',
      favorite: const ['+20', "+966"],
      // optional. Shows only country name and flag,
    );
  }
}
