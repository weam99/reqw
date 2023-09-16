import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';

class CardListRecent extends StatelessWidget {
  const CardListRecent({super.key, required this.image, required this.textbody});
  final String image;
    final String textbody;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        color: ColorManager.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * .35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Image(
                        image: AssetImage(image),
                        width: constraints.maxHeight * .25,
                        height: constraints.maxHeight * .25,
                      ),
                    ),
                    Container(
                      color: ColorManager.lightOrangColor,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      child: Text("in Process",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: ColorManager.orangColor,
                              )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(textbody,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: constraints.maxHeight * .1)),
              ),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Translation",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: ColorManager.primary,
                        fontSize: constraints.maxHeight * .1)),
                Container(
                  padding: const EdgeInsets.only(right: 12),
                  height: constraints.maxHeight * .09,
                  child: Row(
                    children: [
                      Icon(
                        SolarIconsOutline.clockCircle,
                        size: 12,
                        color: ColorManager.grey1,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text("23 jul 2023",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: ColorManager.grey1,
                                  fontSize: constraints.maxHeight * .08))
                    ],
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
