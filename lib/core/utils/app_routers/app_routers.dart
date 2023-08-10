import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../../features/splash/presintation/views/splash_view.dart';

abstract class AppRouter {

  static const kSplashView = '/';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}