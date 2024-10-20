import 'package:flutter/material.dart';
import 'package:odev3/views/myAppBar.dart';
import 'package:odev3/views/firma.dart';
import 'package:odev3/views/saglik.dart';
import 'package:odev3/views/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: widget.title),
      body: Container(
        color: const Color.fromARGB(26, 75, 10, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Saglik(),
              const SizedBox(height: 30),
              const Search(),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: const [
                    Firma(firmaIsmi: 'Firma İsmi', indirimYuzdesi: 30,),
                    Firma(firmaIsmi: 'uzunnnnnnnnnnnnnnnnnnnnnnn', indirimYuzdesi: 10,),
                    Firma(firmaIsmi: 'Firma İsmi Firma İsmi ', indirimYuzdesi: 5,),                
                    Firma(firmaIsmi: 'Firma İsmi', indirimYuzdesi: 20,),
                    Firma(firmaIsmi: 'Firma', indirimYuzdesi: 12),
                    Firma(firmaIsmi: 'firma samsun şubesi', indirimYuzdesi: 6),
                    Firma(firmaIsmi: 'Firma Uzun İsmi', indirimYuzdesi: 22)                                                              
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
