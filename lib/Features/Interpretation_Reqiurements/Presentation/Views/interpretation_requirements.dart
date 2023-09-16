import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Views_Model/Interpretation_Requirements_Cubit/interpretation_requirements_cubit.dart';
import 'Widgets/interpretation_requirements_body.dart';

class InterpretationRequirement extends StatelessWidget {
  const InterpretationRequirement({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InterpretationRequirementsCubit(),
      child: InterpretationRequirementsBody(),
    );
  }
}
