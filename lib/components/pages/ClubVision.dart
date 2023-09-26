import 'package:alradi_app/components/drawer.dart';
import 'package:flutter/material.dart';

class ClubVision extends StatefulWidget {
  const ClubVision({Key? key});

  @override
  _ClubVisionState createState() => _ClubVisionState();
}

class _ClubVisionState extends State<ClubVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white, // خلفية بيضاء
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    'رؤية النادى',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/logo.png', // استبدل "assets/club_image.png" بمسار صحيح لصورة النادي
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'البقاء ضمن الفرق الخمس الأول في دوري المحترفين لكرة القدم  ومنافساً في الألعاب المختلفة',
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'رسالة النادى',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40), // تعديل هنا لزيادة التباعد
                    child: Image.asset(
                      'assets/ball.jpg', // استبدل "assets/club_image.png" بمسار صحيح لصورة النادي
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'توفير بيئة رياضية محفّزة للممارسين في مختلف الألعاب الرياضية وجاذبة للاستثمار، مع الالتزام بتفعيل المسؤولية الاجتماعية، لتحقيق تطلعات الشركاء والتوجهات المستقبلية للمملكة.',
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    'قيم النادى',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/logo.png', // استبدل "assets/club_image.png" بمسار صحيح لصورة النادي
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'في ضوء الالتزام بالقيم الإسلامية، يُؤمن نادي الرائد السعودي بالقيّم التالية التي يسعى إلى تطبيقها في كافة أنشطته ومعاملاته، إضافة إلى نشرها لجميع شركائه الداخليين والخارجيين وغرسها في نفوسهم بما يضمن بيئة عمل تنافسية في النادي.  ( التحدي  ،  الاحترافية  ،  الشفافية  ،  العمل الجماعي    ،  الشفافية    ،  العمل الجماعي  ،   الأمانة  ،  الروح الرياضية  ،  الانضباط  )',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
