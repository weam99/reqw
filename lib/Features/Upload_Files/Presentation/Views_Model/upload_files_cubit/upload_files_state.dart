part of 'upload_files_cubit.dart';

@immutable
sealed class UploadFilesState {}

final class UploadFilesInitial extends UploadFilesState {}
final class UploadFilesSuccess extends UploadFilesState {}
