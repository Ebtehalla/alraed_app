import '../drawer.dart';
import 'package:flutter/material.dart';

class Acdimc extends StatefulWidget {
  const Acdimc({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AcdimcState createState() => _AcdimcState();
}

class _AcdimcState extends State<Acdimc> {
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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200, // ارتفاع الصورة
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'الأكاديمية',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/logo.png',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.white, // لون الخلفية
            padding: const EdgeInsets.all(
                26), // هنا يمكنك تعديل التباعد الداخلي للنص
            child: const Text(
              "واشتهر اسم النادي في لعبة كرة القدم حيث يلعب في الدوري الممتاز منذ عام ١٤٠٦هـ والذي يطلق عليه حاليا اسم دوري محمد بن سلمان للمحترفين. وحقق النادي أفضل ترتيب له في بعض المواسم باحتلاله المركز الخامس، وحصل مرّتين على بطولة  دوري الدرجة الأولى السعودي عامي 1992م و2008م، كما فاز بدوري الدرجة الثانية السعودي في عام 2006م، وكأس الأمير فيصل بن فهد لأندية الدرجة الأولى والثانية عام 2006م.ويعتمد النادي أساساً في تزويد الفريق الأول لكرة القدم باللّاعبين على الفئات السنّية التي يعتني النادي بتطويرها إضافة إلى استقطاب عدد محدود من اللّاعبين الأجانب",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl, // ترتيب النص من اليمين لليسار
            ),
          ),
        ],
      ),
    );
  }
}
