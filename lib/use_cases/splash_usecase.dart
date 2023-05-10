import 'package:imperia_hub/domain/repos/splash_repo.dart';

class SplashUseCase {
  SplashUseCase(this._splashRepo);
  final SplashRepo _splashRepo;
  loadSplash(Function onLoadSplash) {
    _splashRepo.loadSplash().then((value) {
      onLoadSplash.call();
    });
  }
}
