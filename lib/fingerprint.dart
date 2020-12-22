import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lab_7/home.dart';

class HomeScreen extends StatelessWidget {
  final LocalAuthentication localAuth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () async {
          bool CheckBiometrics = await localAuth.canCheckBiometrics;
          if (CheckBiometrics) {
            await localAuth.authenticateWithBiometrics(
                localizedReason: 'Authenticate to see your photos');

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.fingerprint,
              size: 100.0,
            ),
            Text(
              'Touch to Log In',
              style: TextStyle(fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
