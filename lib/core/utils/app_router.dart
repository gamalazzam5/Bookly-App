import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../models/book_model/book_model.dart';
import '../repos/home_repo_impl.dart';

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
        builder: (context, state) => BlocProvider<SimilarBooksCubit>(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: AppRoutePaths.searchView,
        builder: (context, state) => BlocProvider<SearchBooksCubit>(
          create: (context) => SearchBooksCubit(getIt.get<HomeRepoImpl>()),
          child: SearchView(),
        ),
      ),
    ],
  );
}

class AppRoutePaths {
  static String get homeView => '/homeView';

  static String get bookDetailsView => '/bookDetailsView';

  static String get searchView => '/search';
}
