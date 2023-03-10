import 'package:get/get.dart';

import '../modules/detail_article_news/bindings/detail_article_news_binding.dart';
import '../modules/detail_article_news/views/detail_article_news_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/post_article_news/bindings/post_article_news_binding.dart';
import '../modules/post_article_news/views/post_article_news_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () =>  SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ARTICLE_NEWS,
      page: () => const DetailArticleNewsView(),
      binding: DetailArticleNewsBinding(),
    ),
    GetPage(
      name: _Paths.POST_ARTICLE_NEWS,
      page: () => PostArticleNewsView(),
      binding: PostArticleNewsBinding(),
    ),
  ];
}
