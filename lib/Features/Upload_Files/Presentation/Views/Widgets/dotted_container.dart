import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'files_list_view.dart';
import '../../Views_Model/upload_files_cubit/upload_files_cubit.dart';
import '../../../../../Core/Utils/color_manager.dart';
import 'package:solar_icons/solar_icons.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadFilesCubit, UploadFilesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          // height: getHeight(context) * .066,
          child: Column(
            children: [
              const FilesListView(),
              DottedBorder(
                  dashPattern: const [8, 4],
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  padding: const EdgeInsets.all(16),
                  radius: const Radius.circular(8),
                  borderPadding: const EdgeInsets.all(8),
                  color: ColorManager.dottedcontainercolor,
                  child: TextButton(
                    onPressed: () {
                      UploadFilesCubit.get(context).openFilePicker();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          SolarIconsBold.uploadMinimalistic,
                          color: ColorManager.green,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Upload Files",
                          style: TextStyle(color: ColorManager.green),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}

String getFileIconByExtension(String extension) {
  switch (extension) {
    case 'pdf':
      return 'asset/image/pdf.png';
    case 'jpg':
    case 'jpeg':
    case 'png':
      return 'asset/image/image.png';
    case 'doc':
    case 'docx':
      return 'asset/image/doc.png';
    case 'xls':
    case 'xlsx':
      return 'asset/image/xls.png';
    case 'ppt':
    case 'pptx':
      return 'asset/image/powerpoint.png';
    default:
      return 'asset/image/image.png';
  }
}
