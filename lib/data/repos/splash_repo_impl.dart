import 'package:imperia_hub/domain/repos/splash_repo.dart';

class SplashRepoImpl extends SplashRepo {
  @override
  Future loadSplash() async {
    return await Future.delayed(const Duration(seconds: 1));
  }
}
