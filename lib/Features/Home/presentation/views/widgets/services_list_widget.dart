import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../translation_details.dart';
import 'services_element.dart';

class ServicesListWidget extends StatelessWidget {
  const ServicesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          ServicesElment(
            title: "Translation",
            actionIcon: Icon(
              SolarIconsOutline.arrowRight,
              color: ColorManager.primary,
            ),
            leadingIcon: ImageAssets.translate,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TranslationDetails(),
              ));
            },
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Language courses",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate3,
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Integration courses",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate4,
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Working abroad",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate5,
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Studying obroad",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate6,
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Tutoring courses",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate7,
          ),
          const SizedBox(
            height: 8,
          ),
          ServicesElment(
            title: "Competence cource",
            actionIcon: const IconSoon(),
            leadingIcon: ImageAssets.translate8,
          ),
        ],
      ),
    );
  }
}

//  ListView.separated(
//   padding: EdgeInsets.zero,
//   itemCount: 3,
//   itemBuilder: (context, index) => ServicesElment(
//     leadingIcon: index == 0
//         ? ImageAssets.translate
//         : index == 1
//             ? ImageAssets.translate3
//             : ImageAssets.translate4,
//     title: index == 0
//         ? "Translation"
//         : index == 1
//             ? "Language courses"
//             : "Integration courses",
//     actionIcon: index == 0
//         ? Icon(
//             SolarIconsOutline.arrowRight,
//             color: ColorManager.primary,
//           )
//         : Container(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 1,
//                 )),
//             child: Text(
//               "soon",
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ),
//   ),
//   separatorBuilder: (context, index) => const SizedBox(
//     height: 8,
//   ),
// ),

class IconSoon extends StatelessWidget {
  const IconSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: AutoSizeText(
        "soon",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
