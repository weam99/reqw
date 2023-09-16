import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rgb_academy/Core/constant.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../Core/Utils/assets_manager.dart';



class info_body extends StatelessWidget {
  const info_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: const Color.fromARGB(255, 247,250, 251),
      child:  Column(
        children: [

          Container(
            margin: EdgeInsets.symmetric(vertical: getHeight(context)/99),
            alignment: Alignment.center,
            width:getWidth(context)/2.8,
            height:  getHeight(context)/4.5,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0xFFF5F5F5)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:  Padding(
              padding: EdgeInsets.only(left: getWidth(context)/29),
              child: SizedBox(


                child: Image.asset(ImageAssets.Imagelogo2)
              ),
            ),


          ),


          SizedBox(
            height: getHeight(context)/19,
          ),
          const Text(
            'RGB International Academy',
            style: TextStyle(
              color: Color(0xFF0F0D28),
              fontSize: 20,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              height: 0.07,
            ),
          ),

          const Text(
            '1.0.0.0',
            style: TextStyle(
              color: Color(0xFF797979),
              fontSize: 16,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),

          SizedBox(
            height: getHeight(context)/46,
          ),

          Container(
            width: getWidth(context),
            height: getHeight(context)/5,
            margin: EdgeInsets.symmetric(horizontal: getWidth(context)/21),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245,245, 245),
              border: Border.all(
              width: 1,
              color:const Color.fromARGB(255, 245,245, 245),
            ),
              borderRadius: BorderRadius.circular(
                20,
              )),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                SizedBox(
                  width: getWidth(context),
                  child: Text(
                    'Follow us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0F0D28),
                      fontSize: getWidth(context)/19,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                  SvgPicture.asset(
                    ImageAssets.Imageface,
                  ),
                  SvgPicture.asset(
                    ImageAssets.Imagelww,
                  ),
                  SvgPicture.asset(
                    ImageAssets.Imageyou,
                  ),
                  SvgPicture.asset(
                    ImageAssets.Imageins,
                  ),
                  SvgPicture.asset(
                    ImageAssets.Imagelyy,
                  ),




                ],)

              ],
            ),


          ),
           SizedBox(
  height: getHeight(context)/28,
),


          Column(
            children: [
              Container(
                width: getWidth(context)/9,
                height: getWidth(context)/9,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(
                      90,
                    )),

                child: const Icon(SolarIconsBold.global),
              ),
              SizedBox(
                height: getHeight(context)/78,
              ),
               Text(
                'RGB Academy.com',
                style: TextStyle(
                  color: Color(0xFF0097EC),
                  fontSize: getWidth(context)/19,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,

                ),
              ),

              SizedBox(
                height: getHeight(context)/78,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: getWidth(context) / 1.1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: const Color.fromARGB(255, 197, 234, 255),
                          shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2))),
                        ),
                        onPressed: () {},
                        child:
                        Text(
                          'Check for update',
                          style: TextStyle(
                            color: Color(0xFF0097EC),
                            fontSize: getWidth(context)/ 19,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,

                          ),
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),














        ],
      ),
    );
  }
}
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 7);
    path.lineTo(size.width / 2, 77);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}