import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool isLoading = false;

  Future<void> loadTasks() async {
    isLoading = true;
    notifyListeners();

    tasks = await _repository.getTasks();

    isLoading = false;
    notifyListeners();
  }
}
