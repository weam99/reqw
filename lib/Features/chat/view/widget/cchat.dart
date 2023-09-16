import 'package:flutter/material.dart';

import 'package:solar_icons/solar_icons.dart';

import '../../../../Core/constant.dart';
import 'FirstM2.dart';
import 'firstM2_secondMessage.dart';
import 'firstM_secondMessage.dart';
import 'firstm.dart';

class chat_body extends StatelessWidget {
  const chat_body({Key? key}) : super(key: key);

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
                ? getHeight(context) / 1.55
                : getHeight(context) / 2,
            child: ListView(
              children: const [
                FirstM(),
                SizedBox(
                  height: 5,
                ),
                firstM2(),
                SizedBox(
                  height: 5,
                ),
                FirstM_SecondMessage(),
                SizedBox(
                  height: 5,
                ),

                firstm2_secondmessage()
              ],
            ),
          ),
          SizedBox(
            height: getHeight(context) / 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: getWidth(context) / 1.3,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                          child:
                              const Icon(SolarIconsBold.galleryAdd, size: 34),
                          onTap: () {}),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 67, 173, 235),
                        ), //<-- SEE HERE
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 67, 173, 235),
                        ), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 67, 173, 235),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 67, 173, 235),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Icon(SolarIconsBold.mapArrowRight)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
