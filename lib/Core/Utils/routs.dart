// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../Features/Home/presentation/views/home_screen.dart';

// import '../../Features/Home/presentation/views/translation_details.dart';
// import '../../Features/Home/presentation/views/translation_main_view.dart';

// abstract class AppRouter {
//   static const kTranslation = '/translationScreen';
//   static const kTranslationDetails = '/translationDetails';

//   static GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return const HomeScreen();
//         },
//       ),
//       GoRoute(
//         path: kTranslation,
//         builder: (context, state) => const TranslationMainView(),
//       ),
//       GoRoute(
//         path: kTranslationDetails,
//         builder: (context, state) => TranslationDetails(),
//       ),
//     ],
//   );
// }
