import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child:  const TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.search),
          labelText: 'Firma Ara',
          helperText: 'İstediğiniz firmada indirim yakalama fırsatı',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}