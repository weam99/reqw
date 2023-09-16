import 'package:flutter/material.dart';

import '../../../../../Core/Function.dart';
import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';
import '../../../../../Core/constant.dart';
import 'card_list_recent.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: isLandScape(context)
            ? getWidth(context) * .22
            : getHeight(context) * .184,
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              SizedBox(
                height: constraints.minHeight * .15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: constraints.maxHeight * .13),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          "see All",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  color: ColorManager.primary,
                                  fontSize: constraints.maxHeight * .09),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * .05,
              ),
              SizedBox(
                height: constraints.maxHeight * .8,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => SizedBox(
                      width: constraints.maxWidth * .51,
                      height: constraints.maxHeight * .8,
                      child: CardListRecent(
                        image: index == 0
                            ? ImageAssets.translate
                            : ImageAssets.translate2,
                        textbody: index == 0
                            ? "Documentary translation"
                            : "Interpretation",
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//  ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 5,
//                   itemBuilder: (context, index) => SizedBox(
//                       width: constraints.maxWidth * .51,
//                       height: constraints.maxHeight * .8,
//                       child: CardListRecent(
//                         image: index == 0
//                             ? ImageAssets.translate
//                             : ImageAssets.translate2,
//                         textbody: index == 0
//                             ? "Documentary translation"
//                             : "Interpretation",
//                       )),
//                 ),