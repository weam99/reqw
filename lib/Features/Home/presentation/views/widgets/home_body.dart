import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';
import 'bannar_home.dart';
import 'custom_appbar.dart';
import 'recent_widget.dart';
import 'services_list_widget.dart';
import 'tapbar_home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: ColorManager.listbackGroundHome),
        ),
        child: Column(
          children: [
            const CustomAppbar(
              row: TapBarHome(),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics:const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeBannar(),
                    const SizedBox(
                      height: 16,
                    ),
                    const RecentWidget(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, bottom: 8),
                      child: Text(
                        "Our Services",
                        style: Theme.of(context).textTheme.headlineLarge!,
                      ),
                    ),
                    const ServicesListWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
