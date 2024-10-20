import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String appBarTitle;

  const MyAppBar({super.key, required this.appBarTitle});

  @override
  State<StatefulWidget> createState() => _MyAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 2, 46, 81),
            Color.fromARGB(255, 102, 48, 227)
          ],
        ),
      )),
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
            color: Colors.white,
          )),
      title: Row(
        children: [
          const SizedBox(
            width: 85,
          ),
          Text(
            widget.appBarTitle,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
