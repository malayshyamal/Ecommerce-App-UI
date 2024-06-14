
import 'package:ecommerce_app/provider/provider.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>ItemsProvider(), child: Ecommerce_app(),),
  );
}

class Ecommerce_app extends StatelessWidget {
  const Ecommerce_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

