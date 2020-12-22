import 'package:lab_7/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:lab_7/first_page.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      home: FirstPage(),
      theme: theme.getTheme(),
    );
  }
}
