import 'package:imperia_hub/domain/repos/landing_repo.dart';

class LandingRepoImpl extends LandingRepo {
  int _navSelectionIndex = 0;
  @override
  get selectedNavIndex => _navSelectionIndex;

  @override
  setNavSelectionIndex(int position) {
    _navSelectionIndex = position;
  }
}
