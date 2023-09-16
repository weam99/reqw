import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/Utils/assets_manager.dart';
import '../../../../../Core/Utils/color_manager.dart';

class TapBarHome extends StatelessWidget {
  const TapBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          decoration: BoxDecoration(
              border: Border.all(color: ColorManager.primary, width: 0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: constraints.maxHeight,
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child:
                        Image(image: AssetImage(ImageAssets.imageProfileHome)),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: constraints.maxHeight * .17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hi Ahmed",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  fontSize: constraints.maxHeight * .23,
                                  color: ColorManager.white),
                        ),
                        Text(
                          "How cane we help you?",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: constraints.maxHeight * .18,
                                  color: ColorManager.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              CircleAvatar(
                backgroundColor: ColorManager.lightGrey,
                radius: constraints.maxHeight * .35,
                child: CircleAvatar(
                  backgroundColor: ColorManager.primary,
                  radius: constraints.maxHeight * .34,
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        ImageAssets.chatIcon,
                        fit: BoxFit.fill,
                        height: 100,
                      )),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
