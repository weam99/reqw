import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import '../../../../../Core/Function.dart';

import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class TranslationService extends StatelessWidget {
  const TranslationService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: SizedBox(
        height: isLandScape(context)
            ? getHeight(context) * .9
            : getHeight(context) * .33,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: isLandScape(context)
                      ? constraints.maxHeight * .65
                      : constraints.maxHeight * .62,
                  width: constraints.maxWidth,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage(ImageAssets.translationMainImage),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Translation Service',
                        style: TextStyle(
                            fontSize: constraints.maxHeight * .06,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w600,
                            color: ColorManager.fontcolor),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.08,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              ImageAssets.starboldicon,
                              color: ColorManager.orange,
                              height: constraints.maxHeight * .07,
                            ),
                            Text('4.9',
                                style: TextStyle(
                                    fontSize: constraints.maxHeight * .07,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w500,
                                    color: ColorManager.fontcolor))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * .05,
                ),
                SizedBox(
                  height: isLandScape(context)
                      ? constraints.maxHeight * .16
                      : constraints.maxHeight * .22,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: ReadMoreText(
                      "Unlock your academic potential with RGP Company's comprehensive range of services including language translation for many languages such as german",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'See more',
                      trimExpandedText: ' See less',
                      style: TextStyle(
                          fontSize: constraints.maxHeight * .05,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w500,
                          color: ColorManager.subtitlecolor),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
