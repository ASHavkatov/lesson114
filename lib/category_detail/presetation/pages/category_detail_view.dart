import 'package:flutter/material.dart';
import 'package:lesson114/category_detail/presetation/pages/category_detail_view_model.dart';
import 'package:lesson114/widgets/appbarr.dart';
import 'package:lesson114/widgets/buttonnav.dart';


class CategoryDetailView extends StatelessWidget {
  const CategoryDetailView({super.key, required this.viewModel});

  final CategoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) => Scaffold(
          appBar: AppBarr(
            image: 'assets/svg/vector.svg',
            text: 'Breakfast',
            firstactions: 'assets/svg/search.svg',
            secondactions: 'assets/svg/notification.svg',
          ),
          body: GridView.builder(
            itemCount: viewModel.recipes.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Image(
              image: NetworkImage(viewModel.recipes[index].image),
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            firstsvg: ('assets/svg/home.svg'),
            secondsvg: ('assets/svg/community.svg'),
            thirdsvg: ('assets/svg/categories.svg'),
            forthsvg: ('assets/svg/profile.svg'),
          )),
    );
  }
}
