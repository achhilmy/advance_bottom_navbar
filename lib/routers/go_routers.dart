import 'package:advance_navigation/pages/account_page.dart';
import 'package:advance_navigation/pages/home_page.dart';
import 'package:advance_navigation/pages/main_page.dart';
import 'package:advance_navigation/pages/second_page.dart';
import 'package:advance_navigation/pages/setting_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final AppRouter shared = AppRouter._internal();

  factory AppRouter() {
    return shared;
  }

  AppRouter._internal();
  final router = GoRouter(routes: [
    ShellRoute(builder: ((context, state, child) => const MainPage()), routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/account-page',
        builder: (context, state) => const AccountPage(),
      ),
      GoRoute(
        path: '/setting-page',
        builder: (context, state) => const SettingPage(),
      )
    ]),
    GoRoute(
      path: '/second-page',
      builder: (context, state) => const SecondPage(),
    )
  ]);
}
