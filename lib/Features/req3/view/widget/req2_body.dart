import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rgb_academy/Core/style.dart';

import '../../../../Core/Utils/assets_manager.dart';

import '../../../../Core/constant.dart';

class Requ3_body extends StatelessWidget {
  const Requ3_body({Key? key}) : super(key: key);

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
                            fontSize: getWidth(context) / 25,
                          )),
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
                        child: Text('in Process',
                            textAlign: TextAlign.center,
                            style: fontSizeinrocessreq3.copyWith(
                                fontSize: getWidth(context) / 25)),
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
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: getWidth(context) / 30,
                            bottom: getHeight(context) / 50),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('date',
                                style: fontSizereq3.copyWith(
                                  fontSize: getWidth(context) / 25,
                                )),
                            Text('11 jule ,2023',
                                textAlign: TextAlign.right,
                                style: fontSizesecondart.copyWith(
                                    fontSize: getWidth(context) / 25))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: getWidth(context) / 30,
                            right: getWidth(context) / 30,
                            bottom: getHeight(context) / 50,
                            top: getHeight(context) / 50),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Time',
                                style: fontSizereq3.copyWith(
                                  fontSize: getWidth(context) / 25,
                                )),
                            Text('09:00 pm ',
                                textAlign: TextAlign.right,
                                style: fontSizesecondart.copyWith(
                                    fontSize: getWidth(context) / 25))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: getWidth(context) / 30,
                        vertical: getHeight(context) / 50),
                    width: double.infinity,
                    height: orientation == Orientation.portrait
                        ? getHeight(context) / 7
                        : getHeight(context) / 3,
                    padding: const EdgeInsets.only(
                        bottom: 5, left: 12, right: 12, top: 18),
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
                      '4140 Parker Rd. Allentown, New 31134 teksturnya ngga sekentel day creamnya jadi set',
                      style: TextStyle(
                        color: Color(0xFF0F0D28),
                        fontSize: getWidth(context) / 25,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: orientation == Orientation.portrait
                        ? getHeight(context) / 115
                        : getHeight(context) / 855,
                    left: getWidth(context) / 22,
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
                          Text('Address details',
                              textAlign: TextAlign.center,
                              style: fontSizereq3.copyWith(
                                fontSize: getWidth(context) / 25,
                              )),
                        ],
                      ),
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: getWidth(context) / 30,
                            bottom: getHeight(context) / 50),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('State / zone',
                                style: fontSizereq3.copyWith(
                                  fontSize: getWidth(context) / 25,
                                )),

// ---
                            Text('BSD',
                                textAlign: TextAlign.right,
                                style: fontSizesecondart.copyWith(
                                    fontSize: getWidth(context) / 25))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: getWidth(context) / 30,
                            right: getWidth(context) / 30,
                            bottom: getHeight(context) / 50),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('postal code',
                                style: fontSizereq3.copyWith(
                                  fontSize: getWidth(context) / 25,
                                )),
                            Text('115564',
                                textAlign: TextAlign.right,
                                style: fontSizesecondart.copyWith(
                                    fontSize: getWidth(context) / 25))
                          ],
                        ),
                      ),
                    ),
                  ],
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
                                fontSize: getWidth(context) / 25,
                              )),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(context) / 7.5000,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getWidth(context) / 1.3,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: const Color.fromARGB(255, 197, 234, 255),
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                      ),
                      onPressed: () {},
                      child: Text(
                        'invoice',
                        style: TextStyle(
                          color: Color(0xFF0097EC),
                          fontSize: getWidth(context) / 21,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container mainpart(width, height, Name1, Name2, bool check) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: width / 30, vertical: height / 50),
    padding: EdgeInsets.symmetric(horizontal: width / 30),
    width: double.infinity,
    height: check ? height / 15 : height / 5,
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
        Text(Name1,
            style: fontSizereq3.copyWith(
              fontSize: width / 25,
            )),
        Text(Name2,
            textAlign: TextAlign.right,
            style: fontSizesecondart.copyWith(fontSize: width / 25))
      ],
    ),
  );
}
