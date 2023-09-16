import 'package:flutter/material.dart';
import 'package:rgb_academy/Features/App%20info/view/widget/ainfo.dart';




class Appinfo extends StatefulWidget {
  const Appinfo({Key? key}) : super(key: key);

  @override
  State<Appinfo> createState() => _Request1State();
}

class _Request1State extends State<Appinfo> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: const SafeArea(
        child: Scaffold(
          body: AppinfoBody(),
        ),
      ),
    );
  }
}
