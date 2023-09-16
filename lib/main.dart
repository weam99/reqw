import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rgb_academy/Features/Request2/view/request2.dart';
import 'Core/Utils/Share_Pref.dart';
import 'Core/Utils/theme_manager.dart';
import 'Features/App info/view/App info.dart';
import 'Features/CustomBottomNavigationbar/presentation/View/CustomBottomNavigationBar.dart';
import 'Features/Profile/presentation/ViewModel/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Sharepref.init();
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
    //const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getAppLanguage(),
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        home: const Appinfo(),
      ),
    );
  }
}
