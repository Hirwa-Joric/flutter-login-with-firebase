import 'package:flutter/material.dart';
import 'package:flutter_login/src/utils/theme/theme.dart';

void main() =>runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: AppHome(),
    );
  }
}


class AppHome extends StatelessWidget{

}
