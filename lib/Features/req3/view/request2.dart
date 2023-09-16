import 'package:flutter/material.dart';
import 'package:rgb_academy/Features/req3/view/widget/request2_body.dart';


class request3 extends StatelessWidget {
  const request3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child:  const SafeArea(
        child: Scaffold(
          body: request3Body(),

        )

        ),
    );

  }
}
