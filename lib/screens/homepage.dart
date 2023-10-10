import 'package:alradi_app/components/coming_match.dart';
import 'package:alradi_app/components/drawer.dart';
import 'package:alradi_app/components/footer.dart';
import 'package:flutter/material.dart';
import 'package:alradi_app/components/pages/players_cards.dart';
import 'package:uuid/uuid.dart';

import '../data_sources/players_apis.dart';
import '../models/player_model.dart';
import '../services/firebaseApi.dart';

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
                  const UpComingMatch(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          FirebaseApiService().createNews("sdsds",
                              "https://upload.wikimedia.org/wikipedia/en/2/28/AlRaed_logo.png");
                        },
                        child: Text(
                          'قائمة اللاعبين',
                          key: playersKey,
                        ),
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
