import 'package:get_it/get_it.dart';
import 'package:imperia_hub/data/repos/splash_repo_impl.dart';
import 'package:imperia_hub/domain/repos/splash_repo.dart';
import 'package:imperia_hub/use_cases/splash_usecase.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<SplashRepo>(() => SplashRepoImpl());

// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<SplashUseCase>(SplashUseCase(getIt.get()));
}
