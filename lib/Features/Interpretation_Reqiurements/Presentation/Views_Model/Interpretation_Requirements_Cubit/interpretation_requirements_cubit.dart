import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
part 'interpretation_requirements_state.dart';

class InterpretationRequirementsCubit
    extends Cubit<InterpretationRequirementsState> {
  InterpretationRequirementsCubit()
      : super(InterpretationRequirementsInitial());
  static InterpretationRequirementsCubit get(context) =>
      BlocProvider.of(context);
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  Future<void> selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      controller.text = DateFormat.yMMMd().format(selectedDate);
      emit(InterpretationRequirementsSuccess());
    }
  }

  void pickTime(context, TextEditingController controller) async {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    ).then((value) {
      controller.text = value?.format(context).toString() ?? "No time";
    });
  }

  void pickCountry(context, TextEditingController controller) {
    showCountryPicker(
      context: context,
      showPhoneCode:
          true, // optional. Shows phone code before the country name.
      onSelect: (Country country) {
        controller.text = country.displayNameNoCountryCode;
      },
    );
  }
}
