import 'package:flutter/material.dart';

import '../drawer.dart';

class Goalsclub extends StatefulWidget {
  const Goalsclub({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GoalsclubState createState() => _GoalsclubState();
}

class _GoalsclubState extends State<Goalsclub> {
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
      ),
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200, // ارتفاع الصورة
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'الأهداف الإستراتيجية',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/logo.png',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'تحسين تنافسية كرة القدم والألعاب المختلفة',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            'زيادة مشجعي النادي وطنياً ودولياً ',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            'تطوير أداء المسؤولية الاجتماعية ',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            'تطوير البنية التحتية للنادي',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            ' تحسين الأداء الإداري المؤسسي',
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            'تنمية الاستثمار والاستدامة المالية',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
