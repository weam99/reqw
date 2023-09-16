import 'package:flutter/material.dart';

import '../../../../Core/constant.dart';

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: getHeight(context) / 7.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: const Color.fromARGB(255, 197, 234, 255),
                padding: EdgeInsets.symmetric(
                    horizontal: getHeight(context) / 14),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
              ),
              onPressed: () {},
              child: Text(
                'invoice',
                style: TextStyle(
                  color: Color(0xFF0097EC),
                  fontSize: getWidth(context) / 25,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                padding: EdgeInsets.symmetric(
                    horizontal: getHeight(context) / 14),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
              ),
              onPressed: () {},
              child: Text(
                'Output file',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getWidth(context) / 28,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )),
        ],
      ),
    );
  }
}
