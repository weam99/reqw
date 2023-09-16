import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rgb_academy/Core/style.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../../Core/constant.dart';
import '../../../req3/view/widget/req2_body.dart';
import '2button.dart';

class Requ2_body extends StatelessWidget {
  const Requ2_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      color: const Color.fromARGB(255, 247, 250, 251),
      child: Column(
        children: [
          SizedBox(
            width: getWidth(context),
            height: orientation == Orientation.portrait
                ? getHeight(context) / 1.53
                : getHeight(context) / 2,
            child: ListView(
              children: [
                mainpart(getWidth(context), getHeight(context), 'Request code',
                    '115586', orientation == Orientation.portrait),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: getWidth(context) / 30),
                  padding:
                      EdgeInsets.symmetric(horizontal: getWidth(context) / 30),
                  width: double.infinity,
                  height: orientation == Orientation.portrait
                      ? getHeight(context) / 15
                      : getHeight(context) / 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Reques status',
                          style: fontSizereq3.copyWith(
                              fontSize: getWidth(context) / 25)),
                      Container(
                        padding: const EdgeInsets.all(3),
                        width: getWidth(context) / 4,
                        height: orientation == Orientation.portrait
                            ? getHeight(context) / 24
                            : getHeight(context) / 8,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 239, 221),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 255, 239, 221),
                            ),
                            borderRadius: BorderRadius.circular(
                              25,
                            )),
                        child: Text(
                          'in Process',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFFCF6300),
                            fontSize: getWidth(context) / 25,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                mainpart(getWidth(context), getHeight(context), 'Request date',
                    '23 jul 2023', orientation == Orientation.portrait),
                mainpart(
                    getWidth(context),
                    getHeight(context),
                    'type of Translation',
                    'Translation',
                    orientation == Orientation.portrait),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(context) / 30),
                          margin: EdgeInsets.symmetric(
                              horizontal: getWidth(context) / 30,
                              vertical: getHeight(context) / 50),
                          height: orientation == Orientation.portrait
                              ? getHeight(context) / 15
                              : getHeight(context) / 5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Arabic',
                                  textAlign: TextAlign.center,
                                  style: fontSizesecondart.copyWith(
                                      fontSize: getWidth(context) / 25)),
                            ],
                          )),
                    ),
                    SvgPicture.asset(
                      ImageAssets.Imagearrow,
                      width: getWidth(context) / 20,
                      height: getWidth(context) / 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: getWidth(context) / 30,
                              vertical: getHeight(context) / 50),
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(context) / 30),
                          height: orientation == Orientation.portrait
                              ? getHeight(context) / 15
                              : getHeight(context) / 5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('English ',
                                  textAlign: TextAlign.center,
                                  style: fontSizesecondart.copyWith(
                                      fontSize: getWidth(context) / 25)),
                            ],
                          )),
                    ),
                  ],
                ),
                mainpart(getWidth(context), getHeight(context), 'industry',
                    'Political', orientation == Orientation.portrait),
                mainpart(getWidth(context), getHeight(context), 'Name',
                    'Ahmed Mabrouk', orientation == Orientation.portrait),
                mainpart(
                    getWidth(context),
                    getHeight(context),
                    'E-mail',
                    'am5424@fayoum.edu.eg',
                    orientation == Orientation.portrait),
                mainpart(getWidth(context), getHeight(context), 'Phone number',
                    '0111 394 9916', orientation == Orientation.portrait),
                mainpart(
                    getWidth(context),
                    getHeight(context),
                    'Number of files',
                    '4 file',
                    orientation == Orientation.portrait),
                SizedBox(
                  width: getWidth(context),
                  height: orientation == Orientation.portrait
                      ? getHeight(context) / 5
                      : getHeight(context) / 2,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: getWidth(context) / 30,
                            right: getWidth(context) / 30,
                            top: getHeight(context) / 100),
                        width: double.infinity,
                        height: orientation == Orientation.portrait
                            ? getHeight(context) / 15
                            : getHeight(context) / 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  index == 1
                                      ? Image.asset(
                                          ImageAssets.docImage,
                                          width: orientation ==
                                                  Orientation.portrait
                                              ? getHeight(context) / 29
                                              : getHeight(context) / 8,
                                          height: orientation ==
                                                  Orientation.portrait
                                              ? getHeight(context) / 29
                                              : getHeight(context) / 8,
                                        )
                                      : index == 2
                                          ? Image.asset(
                                              ImageAssets.powerpointImage,
                                              width: orientation ==
                                                      Orientation.portrait
                                                  ? getHeight(context) / 29
                                                  : getHeight(context) / 8,
                                              height: orientation ==
                                                      Orientation.portrait
                                                  ? getHeight(context) / 29
                                                  : getHeight(context) / 8,
                                            )
                                          : index == 3
                                              ? Image.asset(
                                                  ImageAssets.excelMainImage,
                                                  width: orientation ==
                                                          Orientation.portrait
                                                      ? getHeight(context) / 29
                                                      : getHeight(context) / 8,
                                                  height: orientation ==
                                                          Orientation.portrait
                                                      ? getHeight(context) / 29
                                                      : getHeight(context) / 8,
                                                )
                                              : Image.asset(
                                                  ImageAssets.pdfImage,
                                                  width: orientation ==
                                                          Orientation.portrait
                                                      ? getHeight(context) / 29
                                                      : getHeight(context) / 8,
                                                  height: orientation ==
                                                          Orientation.portrait
                                                      ? getHeight(context) / 29
                                                      : getHeight(context) / 8,
                                                ),
                                  SizedBox(
                                    width: getWidth(context) / 20,
                                  ),
                                  index == 1
                                      ? const Text(
                                          'file fill name .doc',
                                          style: TextStyle(
                                            color: Color(0xFF0F0D28),
                                            fontSize: 16,
                                            fontFamily: 'Manrope',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        )
                                      : index == 2
                                          ? const Text(
                                              'file fill name .pptx',
                                              style: TextStyle(
                                                color: Color(0xFF0F0D28),
                                                fontSize: 16,
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            )
                                          : index == 3
                                              ? const Text(
                                                  'file fill name .png',
                                                  style: TextStyle(
                                                    color: Color(0xFF0F0D28),
                                                    fontSize: 16,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                )
                                              : const Text(
                                                  'file fill name .pdf',
                                                  style: TextStyle(
                                                    color: Color(0xFF0F0D28),
                                                    fontSize: 16,
                                                    fontFamily: 'Manrope',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                )
                                ],
                              ),
                            ),
                            Icon(
                              SolarIconsOutline.downloadMinimalistic,
                              color: Colors.blue,
                              size: orientation == Orientation.portrait
                                  ? getHeight(context) / 29
                                  : getHeight(context) / 11,
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 11,
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getWidth(context) / 30,
                        vertical: getHeight(context) / 50),
                    width: double.infinity,
                    height: orientation == Orientation.portrait
                        ? getHeight(context) / 7
                        : getHeight(context) / 2.5,
                    padding: const EdgeInsets.only(
                        bottom: 5, left: 12, right: 12, top: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: const Color(0xFFF5F5F5),
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    child: Text(
                        'teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel',
                        style: fontSizesecondart.copyWith(
                          fontSize: getWidth(context) / 25,
                        )),
                  ),
                  Positioned(
                    top: orientation == Orientation.portrait
                        ? getHeight(context) / 115
                        : getHeight(context) / 999900,
                    left: getWidth(context) / 222,
                    child: Container(
                      width: getWidth(context) / 3,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Comment',
                              textAlign: TextAlign.center,
                              style: fontSizereq3.copyWith(
                                fontSize: getWidth(context) / 25.000000,
                              )),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          button(),
        ],
      ),
    );
  }
}
