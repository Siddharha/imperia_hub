import 'package:get_it/get_it.dart';
import 'package:imperia_hub/data/repos/landing_repo_impl.dart';
import 'package:imperia_hub/data/repos/splash_repo_impl.dart';
import 'package:imperia_hub/domain/repos/landing_repo.dart';
import 'package:imperia_hub/domain/repos/splash_repo.dart';
import 'package:imperia_hub/use_cases/landing_usecases.dart';
import 'package:imperia_hub/use_cases/splash_usecases.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<SplashRepo>(() => SplashRepoImpl());
  getIt.registerLazySingleton<LandingRepo>(() => LandingRepoImpl());

// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<SplashUseCase>(SplashUseCase(getIt.get()));
  GetIt.I.registerSingleton<NavSelectUseCase>(NavSelectUseCase(getIt.get()));
}
