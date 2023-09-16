import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rgb_academy/Core/constant.dart';

import '../../../../Core/Utils/assets_manager.dart';
import '../../../Request2/view/request2.dart';
import '../../../req3/view/request2.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(context) / 25,
      ),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Requests',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: const Color(0xFF0F0D28),
                  fontSize: getWidth(context) / 19,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 1.35,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(context) / 49.000,
          ),
          SizedBox(
            height: orientation == Orientation.portrait
                ? getHeight(context) / 1.9
                : getHeight(context) / 14,
            width: getWidth(context),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Stack(children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getWidth(context) / 30),
                    width: double.infinity,
                    height: orientation == Orientation.portrait
                        ? getHeight(context) / 3
                        : getHeight(context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(255, 232, 232, 232),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getWidth(context) / 30,
                              top: getHeight(context) / 40),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            ImageAssets.translateImage,
                            width: getWidth(context),
                            height: orientation == Orientation.portrait
                                ? getHeight(context) / 15
                                : getHeight(context) / 5,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            textAlign: TextAlign.left,
                            'Documentary translation',
                            style: TextStyle(
                              color: const Color(0xFF0F0D28),
                              fontSize: getWidth(context) / 20,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: getWidth(context) / 70,
                                  height: getWidth(context) / 70,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF5A00A4),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                SizedBox(
                                  width: getWidth(context) / 120,
                                ),
                                Text(
                                  'Arabic',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF5A00A4),
                                    fontSize: getWidth(context) / 25,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  ImageAssets.Imagearrow,
                                  width: getWidth(context) / 20,
                                  height: getWidth(context) / 20,
                                ),
                                SizedBox(
                                  width: getWidth(context) / 30,
                                ),
                                Container(
                                  width: getWidth(context) / 70,
                                  height: getWidth(context) / 70,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFA534A8),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                SizedBox(
                                  width: getWidth(context) / 120,
                                ),
                                Text(
                                  'English',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFFA534A8),
                                    fontSize: getWidth(context) / 25,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Translation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: getWidth(context) / 25,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  ImageAssets.Imageclick,
                                ),
                                SizedBox(
                                  width: getWidth(context) / 60,
                                ),
                                Text(
                                  '23 jul 2023',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF797979),
                                    fontSize: getWidth(context) / 35,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: const Color.fromARGB(255, 197, 234, 255),
                                padding: EdgeInsets.symmetric(
                                    horizontal: getWidth(context) / 22,
                                    vertical: getHeight(context) / 92),
                              ),
                              onPressed: () {
                                index == 1
                                    ? Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const request3()))
                                    : Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const request2()));
                              },
                              child: Text(
                                'View details',
                                style: TextStyle(
                                  color: const Color(0xFF0097EC),
                                  fontSize: getWidth(context) / 20,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w500,
                                  height: 1.70,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  index == 1
                      ? Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      width: getWidth(context) / 4,
                      height: orientation == Orientation.portrait
                          ? getHeight(context) / 25
                          : getHeight(context) / 7,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD1FDCA),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                        ),
                        border: Border.all(
                          color: const Color(0xFFD1FDCA),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'Done',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: getWidth(context) / 25,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                      : index == 2
                      ? Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      width: getWidth(context) / 4,
                      height: orientation == Orientation.portrait
                          ? getHeight(context) / 25
                          : getHeight(context) / 7,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC5EAFF),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                        ),
                        border: Border.all(
                          color: const Color(0xFFC5EAFF),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        'in Waiting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF0097EC),
                          fontSize: getWidth(context) / 25,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                      : Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      width: getWidth(context) / 4,
                      height: orientation == Orientation.portrait
                          ? getHeight(context) / 25
                          : getHeight(context) / 7,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 239, 221),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                        ),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 239, 221),
                          width: 1,
                        ),
                      ),
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
                    ),
                  )
                ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: orientation == Orientation.portrait
                      ? getHeight(context) / 50
                      : getHeight(context) / 13,
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
