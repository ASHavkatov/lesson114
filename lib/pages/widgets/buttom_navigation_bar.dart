import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 56,
          width: 280,
          decoration: BoxDecoration(
            color: AppColors.textColor,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/svg/home.svg'),
              SvgPicture.asset('assets/svg/community.svg'),
              SvgPicture.asset('assets/svg/categories.svg'),
              SvgPicture.asset('assets/svg/profile.svg')
            ],
          ),
        ),
      ),
    );
  }
}