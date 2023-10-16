import '../drawer.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20), // Add spacing before the image
            Image.asset(
              'assets/diff.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30), // Add spacing after the image
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 2, // عدد الأعمدة في الشبكة
                  mainAxisSpacing: 7, // المسافة العمودية بين العناصر
                  crossAxisSpacing: 7, // المسافة الأفقية بين العناصر
                  children: const [
                    CardWidget(
                      name: 'الأمير محمد بن سلمان',
                      imagePath: 'assets/alamir.jpg',
                    ),
                    CardWidget(
                      name: '93 هي لنا دار',
                      imagePath: 'assets/natorla.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد شيك كافيه',
                      imagePath: 'assets/onen.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @Azom_sa',
                      imagePath: 'assets/azum.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @hilwawatersa',
                      imagePath: 'assets/halui.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @AMClksa',
                      imagePath: 'assets/car.jpg',
                    ),
                    CardWidget(
                      name: ' 🤝 | شراكة نفتخر بها #الرائد @Alqaidsa',
                      imagePath: 'assets/gaidd.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @TahalufCapital',
                      imagePath: 'assets/thalaf.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @shwearmakingarb',
                      imagePath: 'assets/shaorma.jpg',
                    ),
                    CardWidget(
                      name: '🤝 | شراكة نفتخر بها #الرائد @BCareKSA',
                      imagePath: 'assets/becar.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String name;
  final String imagePath;

  const CardWidget({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              name,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
