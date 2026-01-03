import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/screens/summary/summary_screen.dart';
import 'package:flutter_application_1/screens/sleep/sleep_detail_screen.dart';
import 'package:flutter_application_1/screens/sleep/sleep_info_screen.dart';
import 'package:flutter_application_1/screens/steps/steps_detail_screen.dart';
import 'package:flutter_application_1/screens/calories/calories_detail_screen.dart';
import 'package:flutter_application_1/screens/cycle/cycle_detail_screen.dart';
import 'package:flutter_application_1/screens/profile/profile_screen.dart';
import 'package:flutter_application_1/screens/browse/browse_screen.dart';
import 'package:flutter_application_1/screens/more/more_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/summary',
  routes: [
    GoRoute(
      path: '/summary',
      name: 'summary',
      builder: (context, state) => const SummaryScreen(),
    ),
    GoRoute(
      path: '/sleep',
      name: 'sleep',
      builder: (context, state) => const SleepDetailScreen(),
    ),
    GoRoute(
      path: '/sleep/info',
      name: 'sleep-info',
      builder: (context, state) => const SleepInfoScreen(),
    ),
    GoRoute(
      path: '/steps',
      name: 'steps',
      builder: (context, state) => const StepsDetailScreen(),
    ),
    GoRoute(
      path: '/calories',
      name: 'calories',
      builder: (context, state) => const CaloriesDetailScreen(),
    ),
    GoRoute(
      path: '/cycle',
      name: 'cycle',
      builder: (context, state) => const CycleDetailScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/browse',
      name: 'browse',
      builder: (context, state) => const BrowseScreen(),
    ),
    GoRoute(
      path: '/more',
      name: 'more',
      builder: (context, state) => const MoreScreen(),
    ),
  ],
);
