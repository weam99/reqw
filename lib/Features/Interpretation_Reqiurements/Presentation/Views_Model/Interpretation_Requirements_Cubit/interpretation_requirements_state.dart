part of 'interpretation_requirements_cubit.dart';

@immutable
sealed class InterpretationRequirementsState {}

final class InterpretationRequirementsInitial extends InterpretationRequirementsState {}
final class InterpretationRequirementsSuccess extends InterpretationRequirementsState {}
