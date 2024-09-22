import 'package:flutter/material.dart';

class LandingProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  int activeIndex = 0;
  CarouselController? controller = CarouselController();

  PageController pageController = PageController();

  List<String> sliderbanners = [
    "assets/images/poster1.jpg",
    "assets/images/poster2.jpg",
    "assets/images/poster3.png",
  ];
  List<String> bannerTitels = [
    "Mulan",
    "Vikings",
    "The Flash",
  ];

  void onNavigationChange(int i) {
    _selectedIndex = i;
    notifyListeners();
  }

  void onSliderIndexChange(int i) {
    activeIndex = i;
    notifyListeners();
  }
}
