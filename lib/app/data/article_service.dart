import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';

class ArticleService {
  final _connect = Get.find<GetConnect>();
  Future<List> getListArticles() async {
    final response = await _connect.get('posts');
    Logger().d(response);
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar(
        "Error",
        response.statusCode.toString(),
        duration: const Duration(seconds: 10),
      );
    }
  }
  Future deleteArticleService({required String id}) async{
    final response = await _connect.delete('posts/$id');
    Logger().d(response.statusCode);
    if(!response.hasError){
      return response.body!;
    } else{
      throw Get.snackbar("Error", response.statusCode.toString());
    }
  }
}