import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';
import 'buttom_navigation_bar.dart';
import 'categories_item.dart';
import 'category_item.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Center(
            child: SvgPicture.asset(
              'assets/svg/vector.svg',
              width: 45,
              height: 20,
            )),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColors.actionsCOlor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset('assets/svg/notification.svg'),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColors.actionsCOlor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset('assets/svg/search.svg'),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              CategoryItem(),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesItem(
                      image: 'assets/images/lunch.png', text: 'Lunch'),
                  CategoriesItem(
                      image: 'assets/images/breakfast.png', text: 'Breakfast'),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesItem(
                      image: 'assets/images/dinner.png', text: 'Dinner'),
                  CategoriesItem(
                      image: 'assets/images/vegan.png', text: 'Vegan'),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 14,
                    ),
                    CategoriesItem(
                        image: 'assets/images/dessert.png', text: 'Dessert'),
                    SizedBox(width: 0),
                    CategoriesItem(
                        image: 'assets/images/drinks.png', text: 'Drinks'),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}