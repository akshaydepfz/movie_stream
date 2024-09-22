import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool get isVisible => _isVisible;

  void onVisibleChange() {
    _isVisible = !_isVisible;
    notifyListeners();
    ;
  }
}
