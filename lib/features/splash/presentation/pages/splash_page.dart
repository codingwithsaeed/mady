// ignore_for_file: curly_braces_in_flow_control_structures


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/login/presentation/pages/login_page.dart';
import 'package:mady/features/main_page.dart';
import 'package:mady/features/splash/presentation/cubit/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  static const id = 'SplashPage';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => getIt<SplashCubit>()..checkLogin(),
      child: const SplashPageImpl(),
    );
  }
}

class SplashPageImpl extends StatelessWidget {
  const SplashPageImpl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => buildBody();

  Widget buildBody() => Scaffold(
        backgroundColor: Colors.purple.shade800,
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: cubitListener,
          builder: cubitBuilder,
        ),
      );

  Widget cubitBuilder(context, state) =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(
          height: 150,
        ),
        const Center(
          child: Image(
            width: 300,
            height: 300,
            image: AssetImage('assets/images/sale-white.png'),
          ),
        ),
        if (state is SplashError)
          buildErrorBody(context)
        else
          buildLoadingBody(),
      ]);

  void cubitListener(context, state) {
    if (state is SplashError)
      showSnackbar(context,
          message: state.message, color: Colors.white, textColor: Colors.black);
    if (state is SplashLoggedIn)
      Navigator.pushReplacementNamed(context, MainPage.id);
    if (state is SplashNotLoggedIn)
      Navigator.pushReplacementNamed(context, LoginPage.id);
  }

  Widget buildErrorBody(BuildContext context) => TextButton(
        onPressed: () => context.read<SplashCubit>().checkLogin(),
        child: const Text(
          'تلاش مجدد',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      );

  Widget buildLoadingBody() => const CircularProgressIndicator(
        color: Colors.white,
      );
}
