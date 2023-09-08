import 'package:flutter/material.dart';
import 'package:news_app_2/models/category_model.dart';
import 'package:news_app_2/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(
      imageUrl: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      imageUrl: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      imageUrl: 'assets/sports.jpeg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      imageUrl: 'assets/business.jpeg',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageUrl: 'assets/general.jpeg',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoryList[index],
          );
        },
      ),
    );
  }
}
