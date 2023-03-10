import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/post_article_news_controller.dart';
import '../widget/news_post_card.dart';

class PostArticleNewsView extends GetView<PostArticleNewsController> {
  const PostArticleNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color(0xffededed),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,), onPressed: () {
          Get.offNamed(Routes.HOME);
        },
          color: Color(0xff000000),
        ),
        title: Text(
          'StarNews',
          style: TextStyle(fontSize: 14, color: Color(0xff000000), fontWeight:
          FontWeight.bold),
        ),
      ),
      body: NewsPostCard(),
    );
  }
}