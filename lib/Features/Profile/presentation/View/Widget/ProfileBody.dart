import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Change_Password/Presentation/Views/change_password_screen.dart';
import 'LanguageContainer.dart';
import '../../../../Terms&Privacy%20policy/presentation/view/Terms&PrivacypolicyScreen.dart';

import 'package:solar_icons/solar_icons.dart';

import '../../../../../Core/Widget/CustomAppBar.dart';
import '../../ViewModel/cubit/cubit.dart';
import '../../ViewModel/cubit/state.dart';
import 'MyProfileContainer.dart';
import 'NotificationContainer.dart';
import 'ProfileAppbarContent.dart';
import 'ProfileOptionContainer.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Container(
          color: const Color(0xffFAFAFA),
          child: Column(
            children: [
              const AppBarNotification(content: ProfileAppbarContent()),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const MyProfileContainer(),
                    const SizedBox(height: 32),
                    ProfileOptionContainer(
                        icon: SolarIconsOutline.password,
                        txt: "Password",
                        func: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ChangePasswordScreen();
                          }));
                        }),
                    ProfileOptionContainer(
                      icon: SolarIconsOutline.card,
                      txt: "Payment",
                      func: () => print("Payment"),
                    ),
                    const LanguageContainer(),
                    const NotificationContainer(),
                    ProfileOptionContainer(
                      icon: SolarIconsOutline.share,
                      txt: "Share with your friends",
                      func: () => print("Share with your friends"),
                    ),
                    ProfileOptionContainer(
                      icon: SolarIconsOutline.book,
                      txt: "Terms & Privacy policy",
                      func: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              const TermsPrivacyPolicyScreen(),
                        ));
                      },
                    ),
                    ProfileOptionContainer(
                      icon: SolarIconsOutline.infoSquare,
                      txt: "App info",
                      func: () => print("App info"),
                    ),
                  ],
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
