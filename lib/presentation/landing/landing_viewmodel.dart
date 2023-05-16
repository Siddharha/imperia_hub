import 'package:flutter/widgets.dart';
import 'package:imperia_hub/di/di.dart';
import 'package:imperia_hub/presentation/root/base_viewmodel.dart';

import '../../use_cases/landing_usecases.dart';

class LandingViewModel extends BaseViewModel {
  var navSelectUseCase = getIt.get<NavSelectUseCase>();

  selectNavItem(int position) {
    navSelectUseCase.selectNavItem(position);
    notifyListeners();
  }

  int get selectedNavItem {
    var pageIndex = navSelectUseCase.getSelectedNavItem();

    return pageIndex;
  }
}
