import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({super.key,  this.commentController});
  final TextEditingController? commentController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: TextFormField(
        controller: commentController,
        decoration: InputDecoration(
          filled: true,
          label: const Text("Describe your experience"),
          labelStyle: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: ColorManager.lightgreylabel,fontSize: 18),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.whitecontainerbackground),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          fillColor: ColorManager.white,
        ),
        maxLines: 3,
      ),
    );
  }
}
