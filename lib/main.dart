import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/utils/theme.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/login/presentation/pages/login_page.dart';
import 'package:mady/features/main_page.dart';
import 'package:mady/features/reserve_offer/presentation/pages/reserve_offer_page.dart';
import 'package:mady/features/splash/presentation/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: localization,
        supportedLocales: supportedLocales,
        theme: lightTheme,
        initialRoute: SplashPage.id,
        routes: {
          SplashPage.id: (context) => const SplashPage(),
          LoginPage.id: (context) => const LoginPage(),
          MainPage.id: (context) => const MainPage(),
          ReserveOfferPage.id: (context) => ReserveOfferPage(),
        },
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.stylus,
            PointerDeviceKind.touch,
            PointerDeviceKind.unknown
          },
        ),
      );
}
