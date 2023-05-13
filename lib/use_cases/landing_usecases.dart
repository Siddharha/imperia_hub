import 'package:imperia_hub/domain/repos/landing_repo.dart';

class NavSelectUseCase {
  const NavSelectUseCase(this._landingRepo);
  final LandingRepo _landingRepo;

  selectNavItem(int position) {
    _landingRepo.setNavSelectionIndex(position);
  }

  int getSelectedNavItem() {
    return _landingRepo.selectedNavIndex;
  }
}
