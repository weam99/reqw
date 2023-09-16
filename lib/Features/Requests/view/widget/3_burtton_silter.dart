import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/constant.dart';

class buttons_filter extends StatelessWidget {
  const buttons_filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(context) / 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
                primary: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.all(12),
                side: const BorderSide(
                    color: Color.fromARGB(255, 232, 232, 232), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '#  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFCF6300),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'In Process',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFCF6300),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
                primary: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.all(12),
                side: const BorderSide(
                    color: Color.fromARGB(255, 232, 232, 232), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '#  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF34A853),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Done',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF34A853),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
                primary: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.all(12),
                side: const BorderSide(
                    color: Color.fromARGB(255, 232, 232, 232), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '#  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0097EC),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'In Waiting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0097EC),
                      fontSize: getWidth(context) / 23,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
