import 'package:get/get.dart';
import 'package:getx/common/apis/news.dart';
import 'package:getx/common/entity/news.dart';

class NewsDioController extends GetxController {
  var newsPageList =
  Rx<NewsPageListResponseEntity>(NewsPageListResponseEntity());

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }

  getPageList() async {
    newsPageList.value = await NewsAPI.newsPageList();
  }
}