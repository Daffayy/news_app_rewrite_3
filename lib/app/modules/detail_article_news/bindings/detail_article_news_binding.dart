import 'package:get/get.dart';

import '../controllers/detail_article_news_controller.dart';

class DetailArticleNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailArticleNewsController>(
      () => DetailArticleNewsController(),
    );
  }
}
