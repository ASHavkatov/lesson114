import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Seafood",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage('assets/images/seafood.png'),
              width: 356,
              height: 148,
            ),
          ),
        ),
      ],
    );
  }
}
