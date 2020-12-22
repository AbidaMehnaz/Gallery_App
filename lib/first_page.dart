import 'package:flutter/material.dart';
import 'package:lab_7/fingerprint.dart';
import 'package:provider/provider.dart';
import 'package:lab_7/theme.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
                child: Text('Dark Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.dark())),
            FlatButton(
                child: Text('Light Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.light())),
            FlatButton(
              child: Text('Next'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
