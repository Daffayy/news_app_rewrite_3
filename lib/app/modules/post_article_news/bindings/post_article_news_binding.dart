import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/post_article_news_controller.dart';

class PostArticleNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostArticleNewsController>(
      () => PostArticleNewsController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }
}
