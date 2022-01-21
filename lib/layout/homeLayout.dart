import 'package:amit/modules/Products/ProductScreen.dart';
import 'package:amit/modules/categories/categoriesScreen.dart';
import 'package:amit/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
   HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [

 ProductScreen(),
    CategoriesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_rounded),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
