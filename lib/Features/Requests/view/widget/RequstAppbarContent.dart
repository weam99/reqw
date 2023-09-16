import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/constant.dart';

import '../../../../Core/Utils/assets_manager.dart';

import 'package:flutter_svg/svg.dart';

import '../../../chat/view/chat.dart';

class RequestAppBarContent extends StatelessWidget {
  const RequestAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: orientation == Orientation.portrait
                    ? getHeight(context) / 13
                    : getWidth(context) / 6,
                height: orientation == Orientation.portrait
                    ? getHeight(context) / 13
                    : getWidth(context) / 6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                clipBehavior: Clip.antiAlias,
                child: Image(image: AssetImage(ImageAssets.ImageProfileHome)),
              ),
              SizedBox(
                width: getWidth(context) / 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi Ahmed",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: getWidth(context) / 23,
                        color: Colors.white),
                  ),
                  Text(
                    "How can we help you ?",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: getWidth(context) / 28,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const chat()));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: Colors.white)),
              child: SvgPicture.asset(
                ImageAssets.Imagechat,
                width: getWidth(context) / 21,
                height: getWidth(context) / 21,
              ),
            ),
          )
        ]);
  }
}
