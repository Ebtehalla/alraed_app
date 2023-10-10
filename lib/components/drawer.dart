import 'package:alradi_app/components/pages/ClubVision.dart';
import 'package:alradi_app/components/pages/SurveyScreen.dart';
import 'package:alradi_app/components/pages/acadmic.dart';
import 'package:alradi_app/components/pages/all_players.dart';
import 'package:alradi_app/components/pages/document.dart';
import 'package:alradi_app/components/pages/goalsclub.dart';
import 'package:alradi_app/components/pages/pageemplo.dart';
import 'package:alradi_app/components/pages/pagevisit.dart';
import 'package:alradi_app/components/pages/playdiff.dart';
import 'package:alradi_app/components/pages/problem.dart';
import 'package:alradi_app/components/pages/report.dart';
import 'package:alradi_app/components/pages/store.dart';
import 'package:alradi_app/components/pages/volunteer.dart';
import 'package:alradi_app/screens/about.dart';
import 'package:alradi_app/screens/news.dart';
import 'package:flutter/material.dart';
import 'package:alradi_app/components/pages/BoardPage.dart';
import 'package:alradi_app/components/pages/StructurePage.dart';
import 'package:enefty_icons/enefty_icons.dart';

import 'package:expandable/expandable.dart';

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
                            offset: Offset(0, 3), // Offset in x and y direction
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
                  myListTile(
                    context,
                    ' نبذة تاريخية',
                    Icons.message_sharp,
                    const About(),
                  ),
                  myListTile(
                    context,
                    'الهيكل التنظيمي',
                    Icons.grading_outlined,
                    const StructurePage(),
                  ),
                  myListTile(
                    context,
                    ' إتصل بنا ',
                    Icons.contact_phone_rounded,
                    const BoardPage(),
                  ),
                ],
                Icons.sports_football,
              ),

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
                  myListTile(
                    context,
                    ' الأخبار',
                    Icons.newspaper_outlined,
                    const NewsPage(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    ' ألبوم الصور',
                    Icons.photo_library_outlined,
                    const Cards(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                Icons.sports_football,
              ),
              myExpandedWidget(
                context,
                'الرياضات',
                [
                  myListTile(
                    context,
                    'كرة القدم',
                    Icons.sports_basketball_sharp,
                    AllPlayers(),
                  ),
                  myListTile(context, 'الأكاديمية', Icons.blur_linear_sharp,
                      const acdimc()),
                ],
                Icons.sports_handball_rounded,
              ),
              myExpandedWidget(
                context,
                'الإستراتيجية',
                [
                  myListTile(
                    context,
                    'رؤية النادي ورسالته',
                    Icons.message_sharp,
                    const ClubVision(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'الاهداف الإستراتيجية',
                    Icons.grading_outlined,
                    const goalsclub(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'وثيقة الخطة الإستراتيجية(2019-2023)',
                    Icons.document_scanner_sharp,
                    const document(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'التقرير السنوي(2021-2022)',
                    Icons.restore_page_outlined,
                    const report(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                EneftyIcons.diagram_outline,
              ),
              myExpandedWidget(
                context,
                'الاستطلاعات',
                [
                  myListTile(
                    context,
                    'استطلاع الجمهور',
                    Icons.poll,
                    SurveyScreen(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'استطلاع الموظفين',
                    Icons.group,
                    pageemplo(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'استطلاع الزوار',
                    Icons.person_search_sharp,
                    pagevisit(), // بدلي الصفحات حقها بعدين
                  ),
                ],
                EneftyIcons.note_2_outline,
              ),
              myListTile(
                context,
                'المتجر',
                Icons.store,
                const store(), // بدلي الصفحات حقها بعدين
              ),
              myListTile(
                context,
                'البلاغات والشكاوي',
                Icons.report_problem_outlined,
                const broblem(), // بدلي الصفحات حقها بعدين
              ),
              myExpandedWidget(
                context,
                'المزيد',
                [
                  myListTile(
                    context,
                    'المتطوعون',
                    Icons.person_pin,
                    volunteer(), // بدلي الصفحات حقها بعدين
                  ),
                  myListTile(
                    context,
                    'الراغبون بالتسجيل',
                    Icons.group,
                    pageemplo(), // بدلي الصفحات حقها بعدين
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

Widget myListTile(
    BuildContext context, String title, IconData icon, Widget screenName) {
  return GestureDetector(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screenName,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
