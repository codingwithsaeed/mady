import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/core/x/x_widgets.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/login/presentation/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'LoginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('مادی'),
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: blocListener,
        builder: (context, state) => buildColumn(context, state),
      ),
    );
  }

  void blocListener(BuildContext context, LoginState state) {
    state.when(
      initial: () {},
      loading: () {},
      loaded: (user) {
        FocusManager.instance.primaryFocus!.unfocus();
        log(user.toJson().toString());
      },
      error: (message) {
        FocusManager.instance.primaryFocus!.unfocus();
        showSnackbar(context, message: message);
      },
    );
  }

  Widget buildColumn(BuildContext context, LoginState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Image.asset('assets/images/sale-magenta.png'),
        ),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XHintTextField(
                icon: Icons.phone,
                hint: 'شماره موبایل',
                onChanged: (value) {
                  username = value;
                },
              ),
              XHintTextField(
                icon: Icons.password_outlined,
                hint: 'گذر واژه',
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
              state.when(
                initial: () => showButton(context),
                loading: showLoading,
                loaded: (user) => showButton(context),
                error: (error) => showButton(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showLoading() => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularProgressIndicator(
            color: Colors.purple.shade800,
          ),
        ),
      );

  Widget showButton(BuildContext context) => XButton(
        title: 'ورود',
        onPressed: () {
          context.read<LoginBloc>().add(LoginEvent.doAuth(username, password));
        },
        color: Colors.purple.shade800,
      );
}
