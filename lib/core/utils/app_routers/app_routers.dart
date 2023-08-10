import 'package:go_router/go_router.dart';
import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import '../../../features/home/presintation/views/book_details_view.dart';
import '../../../features/splash/presintation/views/splash_view.dart';

abstract class AppRouter {

  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}