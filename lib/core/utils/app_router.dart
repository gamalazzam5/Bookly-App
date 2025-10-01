import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: AppRoutePaths.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutePaths.bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: AppRoutePaths.searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

class AppRoutePaths {
  static String get homeView => '/homeView';

  static String get bookDetailsView => '/bookDetailsView';
  static String get searchView => '/search';

}
