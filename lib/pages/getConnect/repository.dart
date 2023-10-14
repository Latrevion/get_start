import 'package:getx/common/entity/news.dart';
import 'package:getx/pages/getConnect/provider.dart';

abstract class INewsRepository {
  Future<NewsPageListResponseEntity> getNews();
}

class NewsRepository implements INewsRepository {
  NewsRepository({required this.provider});
  final INewsProvider provider;

  @override
  Future<NewsPageListResponseEntity> getNews() async {
    final response = await provider.getNews();
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body!;
    }
  }
}