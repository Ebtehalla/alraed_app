import 'package:alradi_app/components/drawer.dart';
import 'package:alradi_app/components/news_card.dart';
import 'package:alradi_app/services/firebaseApi.dart';
import 'package:alradi_app/services/function.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var temp;
  String loaded = '0';

  Future getdata() {
    print('loaded');
    temp += temp;
    return (temp);
  }

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
            future: temp is List<DocumentSnapshot>
                ? getdata()
                : FirebaseApi().getData('news'),
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const Center(
                  child: RefreshProgressIndicator(),
                );
              }

              var news = snapshot.data as List<DocumentSnapshot>;
              temp = news;

              sortList(temp);

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        var item = news[index].data() as Map<dynamic, dynamic>;
                        Map<String, dynamic> map = Map.from(item);
                        DateTime dateTime = map['time'].toDate();

                        String year = dateTime.year.toString();
                        String month = dateTime.month.toString();
                        String day = dateTime.day.toString();
                        String _dateTime = '$year-$month-$day';
                        // print(map['img']);
                        return MyNewsCard(
                          title: map['title'],
                          category: map['category'].toString(),
                          img: map['img'],
                          content: map['content'],
                          time: _dateTime,
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
