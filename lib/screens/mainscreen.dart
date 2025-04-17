import 'package:flutter/material.dart';
import 'package:fyp_project/constants/colors.dart';
import 'package:fyp_project/constants/navigation.dart';
import 'package:fyp_project/screens/home_screen.dart';
import 'package:fyp_project/screens/settings_screen.dart';
import 'package:fyp_project/screens/user_guide_screen.dart';
import 'package:go_router/go_router.dart';

class Mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Sign Language Translator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      // home: GetStartedScreen(), // Removed as MaterialApp.router does not support 'home'
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/home', // Default route
    routes: [
      // Top-level route for the Home Page with bottom navigation
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) {
          return Navigation(child: child);
        },
        routes: [
          // Nested routes for the tabs
          GoRoute(
            path: '/home',
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => SettingsScreen(),
          ),
          GoRoute(
            path: '/user-guide',
            builder: (context, state) => UserGuideScreen(),
          ),
        ],
      ),
    ],
  );

  Mainscreen({super.key});
}
