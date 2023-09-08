import 'package:dio/dio.dart';
import 'package:news_app_2/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  NewsService();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=f9402e07f87d49afa4f31acc5a520043&category=$category',
      );
      Map<String, dynamic> data = response.data;
      List<dynamic> articles = data['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          url: article['url'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
