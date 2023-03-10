import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:news_app_rewrite_3/app/data/article_service.dart';

import '../../../data/post_article_service.dart';
import '../../home/controllers/home_controller.dart';

class PostArticleNewsController extends GetxController {
  FocusNode nodeTwo = FocusNode();

  void reqFocus() {
    nodeTwo.requestFocus();
  }

  final postNewsService = PostArticelService();

  final postTitle = TextEditingController();
  final postDesc = TextEditingController();

  final isLoading = false.obs;

  Future<void> onSubmit() async {
    isLoading(true);
    try {
      final response = await postNewsService.postNews(
          title: postTitle.text, desc: postDesc.text);
      Logger().d(response);
      await ArticleService();

      isLoading(false);
      Get.back();
    } catch (e) {
      isLoading(false);
    }
  }
}
