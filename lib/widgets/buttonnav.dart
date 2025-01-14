import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson114/utils/utils.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key,
      required this.firstsvg,
      required this.secondsvg,
      required this.thirdsvg,
      required this.forthsvg});

  final String firstsvg, secondsvg, thirdsvg, forthsvg;

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
              SvgPicture.asset(firstsvg),
              SvgPicture.asset(secondsvg,),
              SvgPicture.asset(thirdsvg),
              SvgPicture.asset(forthsvg)
            ],
          ),
        ),
      ),
    );
  }
}
