import 'package:bookly_app/Features/home/presentation/views/book_detalis_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
static final  String routePath='/homeView';
static final  String kBookDetalisView='/BookDetalisView';
static  final  router = GoRouter(routes: [
  GoRoute(
    path: '/', 
    builder: (context, state) => const SplashView(),
    ),
  GoRoute(
    path: routePath , 
    builder: (context, state) => const HomeView(),
    ),
  GoRoute(
    path: kBookDetalisView , 
    builder: (context, state) => const BookDetalisView(),
    ),
]);
} 