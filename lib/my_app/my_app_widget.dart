import 'package:api_calling_demo/view/authentication/authentication_event.dart';
import 'package:api_calling_demo/view/authentication/authentication_state.dart';
import 'package:api_calling_demo/view/authentication/authentication_bloc.dart';
import 'package:api_calling_demo/view/home/screen/home_page.dart';
import 'package:api_calling_demo/view/login/screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({super.key});

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  late AuthenticationBloc _authBloc;
  @override
  void initState() {
    _authBloc = context.read<AuthenticationBloc>();
    _authBloc.add(AppStartedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildMaterialApp();
  }

  Widget _buildMaterialApp() => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: __blocBuilder(),
      );

  Widget __blocBuilder() =>
      BlocBuilder<AuthenticationBloc, AuthenticationState>(builder: _builder);

  Widget _builder(BuildContext context, AuthenticationState state) {
    if (state is AuthenticationAuthenticated) {
      return const HomePage();
    } else if (state is AuthenticationUnauthenticated) {
      return const LoginPage();
    }
    return const LoginPage();
  }
}
