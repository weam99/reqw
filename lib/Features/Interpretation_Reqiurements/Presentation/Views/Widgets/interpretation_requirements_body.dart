import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../Views_Model/Interpretation_Requirements_Cubit/interpretation_requirements_cubit.dart';
import '../../../../Upload_Files/Presentation/Views/Widgets/comment_text_field.dart';
import 'package:solar_icons/solar_icons.dart';
import '../../../../../Core/constant.dart';

// ignore: must_be_immutable
class InterpretationRequirementsBody extends StatelessWidget {
  InterpretationRequirementsBody({super.key});
  TextEditingController datetextEditingController = TextEditingController();
  TextEditingController timetextEditingController = TextEditingController();
  TextEditingController countrytextEditingController = TextEditingController();
  TextEditingController addresstextEditingController = TextEditingController();
  TextEditingController towntextEditingController = TextEditingController();
  TextEditingController statetextEditingController = TextEditingController();
  TextEditingController postaltextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InterpretationRequirementsCubit,
        InterpretationRequirementsState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return SizedBox(
          height: getHeight(context) * .62,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: constraints.maxHeight * .75,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormFieldPicker(
                              isReadOnly: true,
                              controller: datetextEditingController,
                              hint: "Date",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  InterpretationRequirementsCubit.get(context)
                                      .selectDate(
                                          context, datetextEditingController);
                                },
                                icon: Icon(
                                  SolarIconsOutline.calendar,
                                  color: ColorManager.primary,
                                ),
                              ),
                            )),
                            Expanded(
                                child: CustomTextFormFieldPicker(
                              isReadOnly: true,
                              controller: timetextEditingController,
                              hint: "Time",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  InterpretationRequirementsCubit.get(context)
                                      .pickTime(
                                          context, timetextEditingController);
                                },
                                icon: Icon(
                                  SolarIconsOutline.clockCircle,
                                  color: ColorManager.primary,
                                ),
                              ),
                            ))
                          ],
                        ),
                        CustomTextFormFieldPicker(
                          isReadOnly: true,
                          controller: countrytextEditingController,
                          hint: "Select Country",
                          suffixIcon: IconButton(
                            onPressed: () {
                              InterpretationRequirementsCubit.get(context)
                                  .pickCountry(
                                      context, countrytextEditingController);
                            },
                            icon: Icon(
                              SolarIconsOutline.altArrowDown,
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
                        CustomTextFormFieldPicker(
                            controller: addresstextEditingController,
                            hint: "Address Details",
                            isReadOnly: false),
                        CustomTextFormFieldPicker(
                          isReadOnly: true,
                          controller: towntextEditingController,
                          hint: "Town City",
                          suffixIcon: IconButton(
                            onPressed: () {
                              InterpretationRequirementsCubit.get(context)
                                  .pickCountry(
                                      context, countrytextEditingController);
                            },
                            icon: Icon(
                              SolarIconsOutline.altArrowDown,
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormFieldPicker(
                                    controller: statetextEditingController,
                                    hint: "State/Zone",
                                    isReadOnly: false)),
                            Expanded(
                              child: CustomTextFormFieldPicker(
                                controller: postaltextEditingController,
                                hint: "postal code",
                                isReadOnly: false,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const CommentTextField(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class CustomTextFormFieldPicker extends StatelessWidget {
  const CustomTextFormFieldPicker({
    super.key,
    required this.controller,
    required this.hint,
    this.suffixIcon,
    this.maxline,
    required this.isReadOnly,
    this.backGroundTextForm,
  });
  final TextEditingController controller;
  final String hint;
  final Widget? suffixIcon;
  final bool isReadOnly;
  final int? maxline;
  final Color? backGroundTextForm;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        maxLines: maxline,
        style:
            Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 16),
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
            filled: backGroundTextForm != null ? true : false,
            fillColor: backGroundTextForm,
            hintText: hint,
            hintStyle: TextStyle(color: ColorManager.unchangabletextcolor),
            labelText: hint,
            labelStyle: TextStyle(color: ColorManager.unchangabletextcolor),
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManager.whitecontainerbackground)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.white),
                borderRadius: const BorderRadius.all(Radius.circular(8)))),
      ),
    );
  }
}

class Statepicker extends StatelessWidget {
  const Statepicker({super.key});

  @override
  Widget build(BuildContext context) {
    return CSCPicker(
      defaultCountry: CscCountry.Egypt,
      currentCountry: "Egypt",
      showCities: false,
      onCountryChanged: (value) {},
      onCityChanged: (value) {},
      onStateChanged: (value) {},
    );
  }
}
