import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AuthLoadingScreen extends StatelessWidget {
  const AuthLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
