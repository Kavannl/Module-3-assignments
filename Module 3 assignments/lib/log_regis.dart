import 'package:flutter/material.dart';
import 'package:module/regis.dart';

import 'login.dart';

class LogRegis extends StatefulWidget {
  const LogRegis({super.key});

  @override
  State<LogRegis> createState() => _LogRegisState();
}

class _LogRegisState extends State<LogRegis> {
  bool showLogin = true;

  void toggleForm() {
    setState(() {
      showLogin = !showLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(showLogin ? 'Login' : 'Register'),
      ),
      body: showLogin ? LoginForm(toggleForm) : RegisterForm(toggleForm),
    );
  }
}

