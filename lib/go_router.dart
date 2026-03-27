import 'package:air_quality_1/features/screens/air_quality_data-screen.dart';
import 'package:air_quality_1/features/screens/home_screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreens(),
    ),
    //  GoRoute(
    //   path: 'airQualityData',
    //   //name: 'airQualityData',
    //   builder: (context, state) => const AirQualityDataScreen(),
    // ),
  ],
);