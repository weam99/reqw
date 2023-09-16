import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';

class HomeBannar extends StatelessWidget {
  HomeBannar({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: isLandScape(context)
            ? getWidth(context) * .3
            : getHeight(context) * .219,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(children: [
              Container(
                height: constraints.maxHeight * .52, //96

                decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    border: Border.all(color: ColorManager.primary, width: 2)),
              ),
              Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: isLandScape(context)
                            ? constraints.maxHeight * .91
                            : constraints.maxHeight * .86,
                        width: isLandScape(context)
                            ? constraints.maxWidth * .86
                            : constraints.maxWidth * .91,
                        child: PageView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 5,
                          controller: pageController,
                          // itemCount: pages.length,
                          itemBuilder: (_, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              clipBehavior: Clip.antiAlias,
                              child: Image(
                                  height: constraints.maxHeight * .86,
                                  width: constraints.maxWidth * .91,
                                  fit: BoxFit.fill,
                                  image: AssetImage(ImageAssets.bannarHome)),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SmoothPageIndicator(
                        controller: pageController,
                        count: 5,
                        effect: ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 10,
                          expansionFactor: 3,
                          dotColor: ColorManager.lightGrey,
                          activeDotColor: ColorManager.primary,
                        ),
                      ),
                    ],
                  ))
            ]);
          },
        ));
  }
}
