import 'package:flutter/cupertino.dart';

class UiController extends ChangeNotifier {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void changeindex(int index) {
    currentIndex = index;
    pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
