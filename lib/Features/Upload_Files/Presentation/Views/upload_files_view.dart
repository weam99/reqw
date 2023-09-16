import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Views_Model/upload_files_cubit/upload_files_cubit.dart';

import 'Widgets/upload_files_view_body.dart';

class UploadFilesView extends StatelessWidget {
  const UploadFilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadFilesCubit(),
      child: UploadFilesViewBody(),
    );
  }
}
