import 'package:amit/models/categoriesModel.dart';
import 'package:amit/shared/components/components.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<CategoriesModel> data = [
    CategoriesModel(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Fashion"),
    CategoriesModel(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Fashion"),
    CategoriesModel(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Fashion"),
    CategoriesModel(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Fashion"),
    CategoriesModel(
        "https://www.zdnet.com/a/img/resize/dcf1d6851d1478396d72d97ff5af06731ddccfd9/2021/09/15/b8fde65c-ceff-4349-8cb8-94d6afbf0243/apple-iphone-13-colors.jpg?width=1200&height=900&fit=crop&auto=webp",
        "Phones"),
    CategoriesModel(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Fashion"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        childAspectRatio: 1 / 1.5,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(
          data.length,
          (index) => buildCategoriesItem(data[index]),
        ),
      ),
    );
  }
}
