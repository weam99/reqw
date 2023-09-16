import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/Function.dart';
import '../../Views_Model/upload_files_cubit/upload_files_cubit.dart';

import '../../../../../Core/constant.dart';
import 'comment_text_field.dart';
import 'dotted_container.dart';

class UploadFilesViewBody extends StatelessWidget {
  UploadFilesViewBody({super.key});
  final TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadFilesCubit, UploadFilesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              // const FilesListView(),
              const SizedBox(
                height: 20,
              ),
              const DotContainer(),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: getHeight(context) * .03),
                child: SizedBox(
                    height: isLandScape(context)
                        ? getHeight(context) * .2
                        : getHeight(context) * .11,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CommentTextField(
                        commentController: commentController,
                      ),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
