import 'package:flutter/material.dart';
import 'package:news_app_2/models/article_model.dart';
import 'package:news_app_2/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            article: articles[index],
          );
        },
      ),
    );
  }
}
