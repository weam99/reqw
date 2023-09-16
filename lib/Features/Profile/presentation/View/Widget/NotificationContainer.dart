import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Utils/color_manager.dart';
import '../../ViewModel/cubit/cubit.dart';
import '../../ViewModel/cubit/state.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Material(
            elevation: .1,
            borderRadius: BorderRadius.circular(8),
            child: Container(
                height: 64,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: ColorManager.lightGrey),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: ColorManager.lightGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(SolarIconsOutline.bell,
                          color: ColorManager.black),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Notifications",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.9,
                      child: CupertinoSwitch(
                        value: ProfileCubit.get(context).switchedButton,
                        onChanged: (value) => ProfileCubit.get(context)
                            .changeSwitchedButton(value),
                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
