import 'package:flutter/material.dart';

class Firma extends StatelessWidget {
  final String firmaIsmi;
  final int indirimYuzdesi;

  const Firma(
      {super.key, required this.firmaIsmi, required this.indirimYuzdesi});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white ),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Icon(Icons.arrow_circle_right_rounded),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              firmaIsmi,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 70,
            width: 70,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 2, 46, 81),
                    Color.fromARGB(255, 102, 48, 227)
                  ],
                ),
              ),
              padding: const EdgeInsets.all(0),
              child: Center(
                  child: Text(
                '%$indirimYuzdesi',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
