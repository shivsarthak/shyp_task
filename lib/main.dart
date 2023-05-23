import 'package:flutter/material.dart';
import 'package:shyp_app/screens/orders_screen.dart';
import 'package:shyp_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final theme = CustomTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          primary: theme.primaryColor,
        ),
        fontFamily: 'Sora',
      ),
      home: const OrdersScreen(),
    );
  }
}
