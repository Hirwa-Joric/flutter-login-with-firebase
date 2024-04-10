import 'package:flutter/material.dart';
import 'package:flutter_login/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter_login/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoardingScreen(),
    );
  }
}


class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("app bar"),
      ),
      body: const Center(
        child: Text("Home page"),
      ),
    );
  }
}
