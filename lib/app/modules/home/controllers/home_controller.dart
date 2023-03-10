import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../../data/article_service.dart';
import '../models/article_news.dart';

class HomeController extends GetxController {

  RxBool isLoading = false.obs;
  RxList<ArticleNews> listArticle = <ArticleNews>[].obs;
  final newsService = ArticleService();

  @override
  void onInit() {
    super.onInit();
    getListArticles();
  }
  Future <void> refreshListArticle() async{
    listArticle.clear();
    await getListArticles();
  }

  getListArticles() async {
    isLoading(true);
    try {
      final response = await newsService.getListArticles();
      listArticle.clear();
      response.map((v) {
        Logger().d(v);
        final news = ArticleNews.fromJson(v);
        listArticle.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Controller Error', e.toString());
    }
  }
  Future deleteArticle(String userId) async {
    isLoading(true);
    try{
      final response = await newsService.deleteArticleService(id: userId);
      Logger().d(response);
      await refreshListArticle();
      Get.snackbar('Delete', 'You Have deleted article!');
      isLoading(false);
    }catch (e){
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
