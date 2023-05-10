import 'package:imperia_hub/di/di.dart';
import 'package:imperia_hub/presentation/root/base_viewmodel.dart';
import 'package:imperia_hub/use_cases/splash_usecase.dart';

class SplashViewModel extends BaseViewModel {
  var splashUsecase = getIt.get<SplashUseCase>();

  loadSplash(onSplashLoad) {
    splashUsecase.loadSplash(onSplashLoad);
  }
}
