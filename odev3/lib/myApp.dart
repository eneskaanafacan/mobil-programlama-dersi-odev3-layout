import 'package:flutter/material.dart';
import 'package:odev3/myHomePage.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Odevi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 47, 65, 228)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Firmalar'),
    );
  }
}