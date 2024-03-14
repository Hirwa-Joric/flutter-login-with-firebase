import 'package:flutter/material.dart';
import 'package:flutter_login/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login/src/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}


class AppHome extends StatelessWidget {
  const AppHome({super.key});

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
