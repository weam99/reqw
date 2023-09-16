import 'package:flutter/material.dart';
import 'package:rgb_academy/Features/Request2/view/widget/Appbar%20_request2.dart';

import 'package:rgb_academy/Features/req3/view/widget/req2_body.dart';

import '../../../Requests/view/widget/AppbarRequest.dart';

class request3Body extends StatelessWidget {
  const request3Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarRequst(content: Request2AppBarContent()),

        Requ3_body(),




      ],
    );
  }
}
