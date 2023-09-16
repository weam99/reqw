import 'package:flutter/material.dart';

import 'Requ_body.dart';
import 'RequstAppbarContent.dart';
import 'AppbarRequest.dart';

class request1Body extends StatelessWidget {
  const request1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarRequst(content: RequestAppBarContent()),
        Requ_body(),
      ],
    );
  }
}
