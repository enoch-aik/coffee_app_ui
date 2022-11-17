import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/screens/error/screen.dart';
import 'package:coffee_app_ui/screens/splash/screen.dart';

final GoRouter appRouter = GoRouter(routes: <GoRoute>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen()),
  GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen()),
], errorBuilder: (context, state) => ErrorScreen(error: state.error));
