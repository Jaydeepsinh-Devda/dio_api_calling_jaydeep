import 'package:api_calling_demo/view/authentication/authentication_bloc.dart';
import 'package:api_calling_demo/view/home/bloc/home_bloc.dart';
import 'package:api_calling_demo/view/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerFactory(() => LoginBloc(authBloc: serviceLocator()));

  serviceLocator.registerLazySingleton(() => AuthenticationBloc());

  serviceLocator.registerFactory(() => HomeBloc(authBloc: serviceLocator()));
}
