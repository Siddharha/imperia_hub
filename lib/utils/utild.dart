import 'package:flutter/material.dart';

import '../app/constant.dart';

bool isMobileView(context) {
  var w = MediaQuery.of(context).size.width;
  return w < Constant.smallScreenSizeWidth;
}
