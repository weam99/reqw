import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/color_manager.dart';

class CustomPasswordAppbarRow extends StatelessWidget {
  const CustomPasswordAppbarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: constraints.maxHeight * .75,
                width: constraints.maxHeight * .75,
                decoration: BoxDecoration(
                    color: ColorManager.opacityPrimary,
                    borderRadius: BorderRadius.circular(8)),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: constraints.maxHeight * .4,
                    )),
              ),
              AutoSizeText(
                'Password',
                style: TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: constraints.maxHeight * .75,
                width: constraints.maxHeight * .75,
              )
            ],
          ),
        );
      },
    );
  }
}
