import 'package:flutter/material.dart';


import 'package:rgb_academy/Features/chat/view/widget/cchat.dart';

import '../../../Requests/view/widget/AppbarRequest.dart';
import 'Appbar _chat.dart';

class chatBody extends StatelessWidget {
  const chatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        AppBarRequst(content: chatAppBarContent()),

        chat_body(),




      ],
    );
  }
}
