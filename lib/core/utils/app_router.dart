import 'package:bookly_app/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const homeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state)=>const SplashView()),
    GoRoute(path: homeView,builder: (context,state)=>const HomeView()),
  ]);
}