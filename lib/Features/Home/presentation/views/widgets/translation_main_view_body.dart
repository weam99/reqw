import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/Utils/assets_manager.dart';
import 'package:rgb_academy/Core/Utils/color_manager.dart';
import 'package:rgb_academy/Features/Home/presentation/views/widgets/custom_appbar.dart';

class TranslationMainViewBody extends StatelessWidget {
  const TranslationMainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppbar(
            row: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: ColorManager.opacityPrimary,
                  borderRadius: BorderRadius.circular(8)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  )),
            ),
            const SizedBox(
              width: 60,
            ),
            Text(
              'Translation',
              style: TextStyle(fontSize: 24, color: ColorManager.white),
            )
          ],
        )),
         Padding(
          padding: EdgeInsets.all(16.0),
          child: Image(
              height: 200, image: AssetImage(ImageAssets.translationMainImage)),
        )
      ],
    ));
  }
}
