import 'package:flutter/material.dart';
import 'package:rgb_academy/Core/constant.dart';



class AppinfoBodybar extends StatelessWidget {
  const AppinfoBodybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                child: Icon(Icons.arrow_back_ios_new)),
          ),


          Text(
            'App Information',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: getWidth(context)/17,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,

            ),
          )




        ]);
  }
}
