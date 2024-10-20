import 'package:flutter/material.dart';

class Saglik extends StatelessWidget {
  const Saglik({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 2, 46, 81),
            Color.fromARGB(255, 102, 48, 227)
          ],
        ),
      ),
      margin: const EdgeInsets.only(left: 18, right: 18),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: const Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(Icons.local_hospital, color: Colors.white,size: 25,),
          SizedBox(
            width: 100,
          ),
          Text(
            'Sağlık',
            style: TextStyle(color: Colors.white, fontSize: 35),
          )
        ],
      ),
    );
  }
}
