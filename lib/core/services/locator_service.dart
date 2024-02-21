import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpLocatorService() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthBloc>(AuthBloc());
}
