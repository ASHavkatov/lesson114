import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson114/categories/presentation/pages/categories_view_model.dart';
import 'package:lesson114/widgets/appbarr.dart';
import 'package:lesson114/widgets/buttonnav.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
    required this.viewModel,
  });

  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarr(
          image: 'assets/svg/vector.svg',
          text: 'Categories',
          firstactions: 'assets/svg/search.svg',
          secondactions: 'assets/svg/notification.svg'),
      body: ListenableBuilder(
          listenable: viewModel,
          builder: (context, widget) {
            return ListView.builder(
              itemCount: viewModel.categories.length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () => context.go(
                        '/categories/detail',
                        extra: viewModel.categories[index],
                      ),
                  child: Image(
                      image: NetworkImage(viewModel.categories[index].image))),
            );
          }),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(
        firstsvg: 'assets/svg/home.svg',
        secondsvg: 'assets/svg/community.svg',
        thirdsvg: 'assets/svg/categories.svg',
        forthsvg: 'assets/svg/profile.svg',
      ),
    );
  }
}
