import 'package:flutter/material.dart';
import '../drawer.dart';

class StructurePage extends StatelessWidget {
  const StructurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          ClipOval(
            child: Image.asset('assets/logo.png'),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 124, 40, 40),
        centerTitle: true,
        toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextShadow(
                    text: 'الهيكل التنظيمي',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Cario',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    shadows: [
                      Shadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1),
                    child: Image.asset('assets/stru.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextShadow extends StatelessWidget {
  final String text;
  final TextStyle style;
  final List<Shadow> shadows;

  const TextShadow({
    Key? key,
    required this.text,
    this.style = const TextStyle(),
    this.shadows = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: style.copyWith(shadows: []),
        ),
        Text(
          text,
          style: style.copyWith(shadows: shadows),
        ),
      ],
    );
  }
}
