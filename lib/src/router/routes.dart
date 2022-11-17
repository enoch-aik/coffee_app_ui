import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/src/screens/error/screen.dart';
import 'package:coffee_app_ui/src/screens/home/screen.dart';
import 'package:coffee_app_ui/src/screens/splash/screen.dart';

final GoRouter appRouter = GoRouter(routes: <GoRoute>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen()),
  GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen()),GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) =>
      const HomeScreen()),
], errorBuilder: (context, state) => ErrorScreen(error: state.error));
