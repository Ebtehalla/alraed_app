import 'network_image.dart';

import '../models/next_match_model.dart';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data_sources/next_match_api.dart';

class UpComingMatch extends StatefulWidget {
  const UpComingMatch({super.key});

  @override
  State<UpComingMatch> createState() => _UpComingMatchState();
}

class _UpComingMatchState extends State<UpComingMatch> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NextMatchModel?>(
      future: NextMatchDataSources().getNextMatch(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final NextMatchModel? match = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const SizedBox(height: 18.0),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(1, 2),
                        ),
                      ],
                    ),
                    width:
                        MediaQuery.of(context).size.width, // تغيير عرض الحاوية
                    child: Center(
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'المباراة القادمة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppCashedImage(
                                imageUrl: match?.away?.image ?? "",
                                height: 100,
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                              Text(match?.away?.name ?? ""),
                              const SizedBox(width: 30),
                              const Center(
                                child: Text(
                                  'vs',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  AppCashedImage(
                                    imageUrl: match?.home?.image ?? "",
                                    height: 100,
                                    width: 50,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(match?.home?.name ?? ""),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Divider(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'الموعد',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 2),
                                      Icon(EneftyIcons.clock_2_outline),
                                    ],
                                  ),
                                  Text(
                                    timeAndDateFormate(date: match?.time),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'المكان',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 2),
                                      Icon(EneftyIcons.location_outline),
                                    ],
                                  ),
                                  Text(match?.location ?? ""),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
      },
    );
  }
}

String timeAndDateFormate({String? date}) {
  String pattern = "yyyy-MM-dd hh:mm";
  var format = DateFormat(pattern);
  var dateString =
      format.format(DateTime.tryParse(date ?? "") ?? DateTime.now());
  return dateString;
}
