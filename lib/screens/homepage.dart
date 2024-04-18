import 'package:alradi_app/components/coming_match.dart';
import 'package:alradi_app/components/drawer.dart';
import 'package:alradi_app/components/footer.dart';
import 'package:alradi_app/components/news_card.dart';
import 'package:alradi_app/screens/news.dart';
import 'package:flutter/material.dart';
import 'package:alradi_app/components/pages/players_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title, required String imagePath})
      : super(key: key);

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // const MyNewsCard(
                    //   img: '',
                    //   title: '',
                    //   category: '',
                    //   content: '',
                    //   time: '',
                    // ),
                    const UpComingMatch(),
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
    );
  }
}
