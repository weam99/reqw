import 'package:flutter/material.dart';

import '../../../Requests/view/widget/AppbarRequest.dart';
import 'ainfobar.dart';
import 'infobody.dart';



class AppinfoBody extends StatelessWidget {
  const AppinfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarRequst(content: AppinfoBodybar()),

        info_body(),




      ],
    );
  }
}

