import 'package:adecco_task/app/navigation/go_router_observer.dart';
import 'package:adecco_task/features/home/home_screen.dart';
import 'package:adecco_task/features/login/login_screen.dart';
import 'package:adecco_task/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  observers: [
    GoRouterObserver(),
  ],
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashScreen(), routes: [
      GoRoute(
        path: 'login',
        builder: (context, state) => const LoginFormValidation(),
      ),
      GoRoute(
        path: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ]),
  ],
);
