import 'package:alradi_app/services/firebaseApi.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpComingMatch extends StatefulWidget {
  const UpComingMatch({super.key});

  @override
  State<UpComingMatch> createState() => _UpComingMatchState();
}

class _UpComingMatchState extends State<UpComingMatch> {
  var temp;
  String loaded = '0';

  Future getdata() {
    print('loaded');
    temp += temp;
    return (temp);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: temp is List<DocumentSnapshot>
            ? getdata()
            : FirebaseApi().getData('match'),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return const Center(
              child: RefreshProgressIndicator(),
            );
          }
          var match = snapshot.data as List<DocumentSnapshot>;
          temp = match[0].data();
          DateTime dateTime = temp['time'].toDate();
          String year = dateTime.year.toString();
          String month = dateTime.month.toString();
          String day = dateTime.day.toString();
          String hour = dateTime.hour.toString();
          String min = dateTime.minute.toString();
          if (min.length == 1) {
            min = '0$min';
          }
          String _dateTime = '$year-$month-$day  $hour:$min';
          return Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100,
            ),
            child: Column(
              children: [
                // صوره الفريقين
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.shortestSide * 0.2,
                          height:
                              MediaQuery.of(context).size.shortestSide * 0.2,
                          child: Image.asset('assets/logo.png'),
                        ),
                        const Text(
                          'الرائد',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'VS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _dateTime,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.shortestSide * 0.2,
                          height:
                              MediaQuery.of(context).size.shortestSide * 0.2,
                          child: Image.network(temp['img']),
                        ),
                        Text(
                          temp['team'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // معلومات مثل الوقت والكان الخ..
              ],
            ),
          );
        });
  }
}
