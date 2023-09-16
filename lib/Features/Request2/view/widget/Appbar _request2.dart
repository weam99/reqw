import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/constant.dart';


import '../../../../Core/Utils/assets_manager.dart';

import 'package:flutter_svg/svg.dart';

import '../../../chat/view/chat.dart';

class Request2AppBarContent extends StatelessWidget {
  const Request2AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 67, 173, 235),
                  border: Border.all(width: 1,  color: Color.fromARGB(255, 67, 173, 235),),
                  borderRadius: BorderRadius.all(

                      Radius.circular(10)),
                ),
                child: Icon(Icons.arrow_back_ios_new,

                )),
          ),
          SizedBox(

            child: Text(
              'Request details',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: getWidth(context)/15,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ),


          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => chat()));
            },
            child: Container(

              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: Colors.white)),
              child: SvgPicture.asset(
                ImageAssets.Imagechat,
                width: getWidth(context)/21,
                height:getWidth(context)/21 ,
              ),
            ),
          )



        ]);
  }
}
