import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../../data/detail_article_service.dart';
import '../models/detail_screen_news.dart';

class DetailArticleNewsController extends GetxController {
  RxBool isLoading = false.obs;
  String id = ' ';
  Rx<DetailScreenNews> detailNews = DetailScreenNews().obs;


  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args ["id"];
    print(args);
    getDetailNews();
  }
  getDetailNews() async {
    isLoading(true);
    try {
      final response = await DetailArticleService().getDetailArticles(id: id);
      Logger().d(response);
      final res = DetailScreenNews.fromJson(response);
      detailNews(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar('Error', e.toString());
    }
  }
}
