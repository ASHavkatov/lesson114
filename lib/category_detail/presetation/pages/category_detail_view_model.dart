import 'package:flutter/material.dart';
import 'package:lesson114/categories/data/repositories/categories_repository.dart';
import 'package:lesson114/category_detail/data/repositories/category_detail_repository.dart';
import '../../../categories/data/models/category_model.dart';
import '../../data/models/recipe_model_small.dart';

class CategoryDetailViewModel extends ChangeNotifier {
  CategoryDetailViewModel({
    required CategoriesRepository castRepo,
    required CategoryDetailRepository repo,
    required this.selected,
  })  : _castRepo = castRepo,
        _repo = repo{
    load();
  }

  final CategoriesRepository _castRepo;
  final CategoryDetailRepository _repo;

  List<CategoryModel> categories = [];
  List<RecipeModelSmall> recipes = [];

  final CategoryModel selected;

  Future<void> load() async {
    categories = await _castRepo.fetchCategories();
    recipes = await _repo.fetchRecipes(selected.id);
    notifyListeners();
  }
}