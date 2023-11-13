import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../components/coming_match.dart';
import '../components/drawer.dart';
import '../components/footer.dart';
import '../components/network_image.dart';
import '../components/pages/players_cards.dart';
import '../services/firebase_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title, required String imagePath});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  GlobalKey playersKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List<GlobalKey> keys = [
      playersKey, //0
    ];
    return Scaffold(
      drawer: AppDrawer(keys: keys),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FutureBuilder<List<DocumentSnapshot>>(
                    future: FirebaseApiService().getData('news'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var news = snapshot.data as List<DocumentSnapshot>;
                        return CarouselSlider.builder(
                          itemCount: news.length,
                          itemBuilder: (context, index, realIndex) {
                            var item =
                                news[index].data() as Map<dynamic, dynamic>;
                            Map<String, dynamic> map = Map.from(item);
                            return AppCashedImage(
                              imageUrl: map["img"],
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            );
                          },
                          options: CarouselOptions(
                            viewportFraction: 1,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 6),
                          ),
                        );
                      } else {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height /4,
                          child: const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }
                    },
                  ),
                  const UpComingMatch(),
                  Column(
                    children: [
                      Text(
                        'قائمة اللاعبين',
                        key: playersKey,
                      ),
                      const playersCard(),
                    ],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
