import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';

class AppBarr extends StatelessWidget implements PreferredSizeWidget {
  const AppBarr(
      {super.key,
      required this.image,
      required this.text,
      required this.firstactions,
      required this.secondactions});

  final String image, text, firstactions, secondactions;
  @override
  Size get preferredSize => const Size(double.infinity, 62);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Center(
            child: SvgPicture.asset(
          image,
          width: 45,
          height: 20,
        )),
        centerTitle: true,
        title: Text(
          text,
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: AppColors.actionsCOlor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset(
                    firstactions,
                    width: 30,
                    height: 14,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.actionsCOlor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: SvgPicture.asset(
                    secondactions,
                  ),
                ),
              )
            ],
          ),
        ]);
  }
}
