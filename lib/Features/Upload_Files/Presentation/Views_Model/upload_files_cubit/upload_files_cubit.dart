import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'upload_files_state.dart';

class UploadFilesCubit extends Cubit<UploadFilesState> {
  UploadFilesCubit() : super(UploadFilesInitial());
  static UploadFilesCubit get(context) => BlocProvider.of(context);

  List<String> selectedFiles = [];
  void openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );

    if (result != null) {
      List<String> filePaths = result.paths.map((path) => path!).toList();
      selectedFiles.addAll(filePaths.map((path) => path.split('/').last));
      emit(UploadFilesSuccess());
    }
  }

  void deleteitem(int index) {
    selectedFiles.removeAt(index);
    emit(UploadFilesSuccess());
  }
}
