import 'package:flutter/material.dart';

import 'package:rgb_academy/Features/chat/view/widget/chatbody.dart';

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child:  const SafeArea(
        child: Scaffold(
          body: chatBody(),

        )

        ),
    );

  }
}
