import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class OrderLoadingScreen extends StatelessWidget {
  const OrderLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
