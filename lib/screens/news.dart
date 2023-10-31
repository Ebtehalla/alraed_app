import 'dart:developer';

import '../components/drawer.dart';
import '../components/news_card.dart';
import '../services/firebase_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: FirebaseApiService().getData('news'),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Center(
                  child: RefreshProgressIndicator(),
                );
              }
              var news = snapshot.data as List<DocumentSnapshot>;
              return ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  var item = news[index].data() as Map<dynamic, dynamic>;
                  Map<String, dynamic> map = Map.from(item);
                  log(map['img']);
                  return MyNewsCard(
                    title: map['title'],
                    img: map['img'],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
