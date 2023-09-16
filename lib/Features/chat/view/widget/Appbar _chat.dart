import 'package:flutter/material.dart';


class chatAppBarContent extends StatelessWidget {
  const chatAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

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
            'Customer service',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: orientation == Orientation.portrait ?  MediaQuery.of(context).size.width/19 : MediaQuery.of(context).size.width/19 ,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,

            ),
          )





        ]);
  }
}
