import 'dart:developer';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/about.dart';
import '../screens/news.dart';
import 'pages/acadmic.dart';
import 'pages/all_players.dart';
import 'pages/board_page.dart';
import 'pages/club_vision.dart';
import 'pages/pageemplo.dart';
import 'pages/pagevisit.dart';
import 'pages/playdiff.dart';
import 'pages/problem.dart';
import 'pages/shcule_sport.dart';
import 'pages/structure_page.dart';
import 'pages/survey_screen.dart';
import 'pages/volunteer.dart';
import 'pdf_screen.dart';

class AppDrawer extends StatelessWidget {
  List<GlobalKey>? keys;
  AppDrawer({super.key, this.keys});
  @override
  Widget build(BuildContext context) {
    //  var widget;
    return // ignore_for_file: must_be_immutable

        SafeArea(
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              const SizedBox(height: 12),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset: const Offset(
                              0,
                              3,
                            ), // Offset in x and y direction
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/placeholder.PNG',
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 175, 35, 35), // تغيير لون الخط
                thickness: 1, // تغيير سمك الخط
                indent: 16, // تحديد المسافة عند البداية
                endIndent: 16, // تحديد المسافة عند النهاية
              ),
              myExpandedWidget(
                context,
                'عن نادي الرائد ',
                [
                  const Divider(
                    color: Colors.black54, // تغيير لون الخط
                    thickness: 0.6, // تغيير سمك الخط
                    indent: 100, // تحديد المسافة عند البداية
                    endIndent: 1, // تحديد المسافة عند النهاية
                  ),
                  const MyListTile(
                    title: 'نبذة تاريخية',
                    icon: Icons.message_sharp,
                    screenName: About(),
                  ),
                  const MyListTile(
                    title: 'الهيكل التنظيمي',
                    icon: Icons.grading_outlined,
                    screenName: StructurePage(),
                  ),
                  const MyListTile(
                    title: ' إتصل بنا ',
                    icon: Icons.contact_phone_rounded,
                    screenName: BoardPage(),
                  ),
                ],
                Icons.sports_football,
              ),
              const SizedBox(height: 8),
              const MyListTile(
                title: 'جدول المباريات',
                icon: Icons.sports_volleyball_outlined,
                screenName: Sportclander(), // بدلي الصفحات حقها بعدين
              ),
              const SizedBox(height: 8),
              myExpandedWidget(
                context,
                'المركز الاعلامي',
                [
                  const Divider(
                    color: Colors.black54, // تغيير لون الخط
                    thickness: 0.6, // تغيير سمك الخط
                    indent: 100, // تحديد المسافة عند البداية
                    endIndent: 1, // تحديد المسافة عند النهاية
                  ),
                  const MyListTile(
                    title: ' الأخبار',
                    icon: Icons.newspaper_outlined,
                    screenName: NewsPage(), // بدلي الصفحات حقها بعدين
                  ),
                  const MyListTile(
                    title: ' ألبوم الصور',
                    icon: Icons.photo_library_outlined,
                    screenName: Cards(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                Icons.sports_football,
              ),
              myExpandedWidget(
                context,
                'الرياضات',
                [
                  const MyListTile(
                    title: 'كرة القدم',
                    icon: Icons.sports_basketball_sharp,
                    screenName: AllPlayers(),
                  ),
                  const MyListTile(
                    title: 'الأكاديمية',
                    icon: Icons.blur_linear_sharp,
                    screenName: Acdimc(),
                  ),
                ],
                Icons.sports_handball_rounded,
              ),
              myExpandedWidget(
                context,
                'الإستراتيجية',
                [
                  const MyListTile(
                    title: 'رؤية النادي ورسالته',
                    icon: Icons.message_sharp,
                    screenName: ClubVision(), // بدلي الصفحات حقها بعدين
                  ),
                  const MyListTile(
                    title: 'الاهداف الإستراتيجية',
                    icon: Icons.grading_outlined,
                    screenName: PdfScreen(
                      pdf:
                          "https://alraedclub.sa/site/img/%D8%A7%D8%B3%D8%AA%D8%B1%D8%A7%D8%AA%D9%8A%D8%AC%D9%8A%D8%A9%20%D9%86%D8%A7%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A6%D8%AF.pdf",
                      title: 'الاهداف الإستراتيجية',
                    ), // بدلي الصفحات حقها بعدين
                  ),
                  const MyListTile(
                    title: "إستراتيجية النادي الرسمية 2023-2028",
                    icon: Icons.document_scanner_sharp,
                    screenName: PdfScreen(
                      pdf:
                          "https://alraedclub.sa/site/img/%D8%A7%D8%B3%D8%AA%D8%B1%D8%A7%D8%AA%D9%8A%D8%AC%D9%8A%D8%A9%20%D9%86%D8%A7%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A6%D8%AF.pdf",
                      title: "إستراتيجية النادي الرسمية 2023-2028",
                    ),
                  ),
                  const MyListTile(
                    title: 'التقرير السنوي(2022-2023)',
                    icon: Icons.restore_page_outlined,
                    screenName: PdfScreen(
                      pdf:
                          "https://alraedclub.sa/site/%D8%A7%D9%84%D8%AA%D9%82%D8%B1%D9%8A%D8%B1%20%D8%A7%D9%84%D8%B3%D9%86%D9%88%D9%8A%20%D9%84%D9%86%D8%A7%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%A6%D8%AF%20%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%20%D9%84%D9%84%D9%85%D9%88%D8%B3%D9%85%2022_23.pdf",
                      title: 'التقرير السنوي(2022-2023)',
                    ), // بدلي الصفحات حقها بعدين
                  ),
                ],
                EneftyIcons.diagram_outline,
              ),
              myExpandedWidget(
                context,
                'الاستطلاعات',
                [
                  MyListTile(
                    title: 'استطلاع الجمهور',
                    icon: Icons.poll,
                    screenName: SurveyScreen(), // بدلي الصفحات حقها بعدين
                  ),
                  MyListTile(
                    title: 'استطلاع الموظفين',
                    icon: Icons.group,
                    screenName: Pageemplo(), // بدلي الصفحات حقها بعدين
                  ),
                  MyListTile(
                    title: 'استطلاع الزوار',
                    icon: Icons.person_search_sharp,
                    screenName: Pagevisit(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                EneftyIcons.note_2_outline,
              ),
              const MyListTile(
                title: 'المتجر',
                icon: Icons.store,
              ),
              const MyListTile(
                title: 'البلاغات والشكاوي',
                icon: Icons.report_problem_outlined,
                screenName: Problem(), // بدلي الصفحات حقها بعدين
              ),
              myExpandedWidget(
                context,
                'المزيد',
                [
                  const MyListTile(
                    title: 'المتطوعون',
                    icon: Icons.person_pin,
                    screenName: Volunteer(), // بدلي الصفحات حقها بعدين
                  ),
                  MyListTile(
                    title: 'الراغبون بالتسجيل',
                    icon: Icons.group,
                    screenName: Pageemplo(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                EneftyIcons.note_2_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

navigateToKey(BuildContext context, List<GlobalKey>? keys, int index) {
  if (keys == null) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const About(),
      ),
      (route) => false,
    );
  } else {
    Navigator.of(context).pop(); // لإغلاق القائمة عند تحديد العنصر
    Scrollable.ensureVisible(
      keys[index].currentContext!,
      alignment: 0.5,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key, required this.title, required this.icon, this.screenName});
  final String title;
  final Widget? screenName;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        String url = "https://store.alraedclub.sa/";
        if (screenName != null) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => screenName!,
            ),
            (route) => false,
          );
        } else {
          try {
            await launchUrl(
              Uri.parse(url),
              mode: LaunchMode.externalApplication,
            );
          } catch (e) {
            log(e.toString());
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              icon,
              color: Colors.black54,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget myExpandedWidget(
  BuildContext context,
  String title,
  List<Widget> children,
  IconData icon,
) {
  return ExpandablePanel(
    theme: const ExpandableThemeData(
      iconPlacement: ExpandablePanelIconPlacement.left,
    ),
    collapsed: const Row(),
    header: SizedBox(
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              icon,
              color: Colors.black54,
              size: 20,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    ),
    expanded: Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 20),
      child: Column(
        children: children,
      ),
    ),
  );
}
