import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson114/categories/data/models/category_model.dart';
import 'package:lesson114/categories/data/repositories/categories_repository.dart';
import 'package:lesson114/categories/presentation/pages/categories_view.dart';
import 'package:lesson114/categories/presentation/pages/categories_view_model.dart';
import 'package:lesson114/category_detail/data/repositories/category_detail_repository.dart';
import 'package:lesson114/category_detail/presetation/pages/category_detail_view.dart';
import 'package:lesson114/category_detail/presetation/pages/category_detail_view_model.dart';
import 'package:lesson114/core/client.dart';
import 'package:provider/provider.dart';
GoRouter router = GoRouter(
  initialLocation: '/categories',
  routes: [
    GoRoute(
      path: '/categories',
      builder: (context, state) => CategoriesView(
        viewModel: CategoriesViewModel(repo: context.read()),
      ),
    ),
    GoRoute(
      path: '/categories/detail',
      builder: (context, state) => CategoryDetailView(
        viewModel: CategoryDetailViewModel(
          castRepo: (context.read()),
          repo: (context.read()),
          selected: state.extra as CategoryModel,
        ),
      ),
    ),
  ],
);

extension on BuildContext {
}

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (context) => ApiClient()),
    Provider(create: (context) => CategoriesRepository(client: context.read())),
    Provider(create: (context) => CategoryDetailRepository(client: context.read())),
  ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
