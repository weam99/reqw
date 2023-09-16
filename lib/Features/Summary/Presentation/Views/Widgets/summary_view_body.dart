import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Function.dart';
import '../../../../Home/presentation/viewModel/home_cubit/stats.dart';
import '../../../../Interpretation_Reqiurements/Presentation/Views/Widgets/interpretation_requirements_body.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import '../../../../Home/presentation/viewModel/home_cubit/cubit.dart';
import 'custom_summary_container.dart';

class SummaryViewBody extends StatelessWidget {
  SummaryViewBody({super.key});
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    addressController.text =
        "Address details4140 Parker Rd. Allentown, New 31134 teksturnya ngga sekentel day creamnya jadi set";
    return BlocConsumer<HomeCubit, HomeStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            // height: getHeight(context) * .6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "type of translation",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.unchangabletextcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Translation",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Arabic",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        SolarIconsOutline.sortHorizontal,
                        color: ColorManager.fontcolor,
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "industry",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.unchangabletextcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Political",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.unchangabletextcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Ahmed Mabrouk",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "E-mail",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.unchangabletextcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "am5424@fayoum.edu.eg",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  CustomSummaryContainer(
                      row: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone number",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.unchangabletextcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "0111 394 9916",
                        style: TextStyle(
                            fontFamily: "Manrope",
                            fontSize: 14,
                            color: ColorManager.fontcolor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  HomeCubit.get(context).currentIndexTypeSelect == 0
                      ? CustomSummaryContainer(
                          row: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Number of files",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  color: ColorManager.unchangabletextcolor,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "4 files",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  color: ColorManager.fontcolor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))
                      : Row(
                          children: [
                            Expanded(
                              child: CustomSummaryContainer(
                                  row: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "date",
                                    style: TextStyle(
                                        fontFamily: "Manrope",
                                        fontSize: 14,
                                        color:
                                            ColorManager.unchangabletextcolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "jule 11,2023",
                                    style: TextStyle(
                                        fontFamily: "Manrope",
                                        fontSize: 14,
                                        color: ColorManager.fontcolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: CustomSummaryContainer(
                                row: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          fontFamily: "Manrope",
                                          fontSize: 14,
                                          color:
                                              ColorManager.unchangabletextcolor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "09:00 pm",
                                      style: TextStyle(
                                          fontFamily: "Manrope",
                                          fontSize: 14,
                                          color: ColorManager.fontcolor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                  HomeCubit.get(context).currentIndexTypeSelect == 0
                      ? CustomComment(
                          row: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Comment",
                                style: TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 14,
                                    color: ColorManager.unchangabletextcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            CustomTextFormFieldPicker(
                                backGroundTextForm: ColorManager.white,
                                maxline: 3,
                                controller: addressController,
                                hint: "Address Details",
                                isReadOnly: true),
                          ],
                        )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomComment extends StatelessWidget {
  const CustomComment({super.key, required this.row});
  final Widget row;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLandScape(context)
          ? getHeight(context) * .25
          : getHeight(context) * .11,
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: row,
      ),
    );
  }
}
