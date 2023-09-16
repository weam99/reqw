import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Core/constant.dart';
import '../../../../../Core/Utils/color_manager.dart';
import 'dotted_container.dart';
import '../../Views_Model/upload_files_cubit/upload_files_cubit.dart';
import 'package:solar_icons/solar_icons.dart';

class FilesListView extends StatelessWidget {
  const FilesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadFilesCubit, UploadFilesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: UploadFilesCubit.get(context).selectedFiles.length,
          itemBuilder: (context, index) {
            String fileName =
                UploadFilesCubit.get(context).selectedFiles[index];
            String fileExtension = fileName.split('.').last;
            String iconPath = getFileIconByExtension(fileExtension);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                // height: getHeight(context) * .11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          iconPath,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          width: getWidth(context) * .7,
                          child: Text(
                            fileName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          UploadFilesCubit.get(context).deleteitem(index);
                        },
                        icon: Icon(
                          SolarIconsBold.closeSquare,
                          color: ColorManager.rederror,
                        ))
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
