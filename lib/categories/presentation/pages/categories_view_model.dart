import 'package:flutter/cupertino.dart';
import 'package:lesson114/categories/data/models/category_model.dart';

import '../../data/repositories/categories_repository.dart';

class CategoriesViewModel extends ChangeNotifier {

  CategoriesViewModel({required CategoriesRepository repo}) : _repo = repo{
    load();
  }

  final CategoriesRepository _repo;

  List<CategoryModel> categories = [];

  Future<void> load() async {
    categories = await _repo.fetchCategories();
    notifyListeners();
  }
}
