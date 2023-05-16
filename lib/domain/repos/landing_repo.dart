import 'package:flutter/material.dart';

abstract class LandingRepo {
  int get selectedNavIndex;

  var pagerController = PageController();
  setNavSelectionIndex(int position);
}
