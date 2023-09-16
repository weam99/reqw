import 'package:flutter/material.dart';
import 'package:rgb_academy/Features/Requests/view/widget/requst1body.dart';

class Request1 extends StatelessWidget {
  const Request1({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: request1Body(),
      ),
    );
  }
}
