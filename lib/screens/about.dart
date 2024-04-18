import 'package:alradi_app/components/drawer.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' النبذة التاريخية  ',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
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
      body: SingleChildScrollView(
        child: Column(
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
            const SizedBox(height: 20), // تباعد بين الصورة والنص
            Column(
              children: [
                Container(
                  color: Colors.white, // لون الخلفية
                  padding: const EdgeInsets.all(
                      26), // هنا يمكنك تعديل التباعد الداخلي للنص
                  child: const Text(
                    'تم تأسيس نادي الرائد السعودي في عام 1374هـ تحت مسمى نادي الأهلي بمبادرة من شباب مدينة بريدة كأول نادي رياضي في منطقة القصيم ومن أوائل الأندية الرياضية في المملكة. وكان أبرز من ساهم في تأسيس النادي عبد العزيز العبودي، وعلي المضيان، وعبد العزيز العمار، ومحمد الفوزان، ويوسف العمار، وغانم الغانم. وفي عام 1382هـ وبعد قرار وزارة المعارف بتوثيق الأندية الرياضية في المملكة، سارع النادي بالتسجيل رسمياً لدى الوزارة، وتم تغيير مسماه في عام 1388هـ إلى نادي الرائد السعودي، ويُكنّى برائد التحدي. واشتهر اسم النادي في لعبة كرة القدم حيث يلعب في الدوري الممتاز منذ عام ١٤٠٦هـ والذي يطلق عليه حاليا اسم دوري محمد بن سلمان للمحترفين. وحقق النادي أفضل ترتيب له في بعض المواسم باحتلاله المركز الخامس، وحصل مرّتين على بطولة دوري الدرجة الأولى السعودي عامي 1992م و2008م، كما فاز بدوري الدرجة الثانية السعودي في عام 2006م، وكأس الأمير فيصل بن فهد لأندية الدرجة الأولى والثانية عام 2006م. ويعتمد النادي أساساً في تزويد الفريق الأول لكرة القدم باللّاعبين على الفئات السنّية التي يعتني النادي بتطويرها إضافة إلى استقطاب عدد محدود من اللّاعبين الأجانب. ويُشارك النادي في عدة ألعاب رياضية مختلفة (غير كرة القدم) وهي: الملاكمة، كرة اليد، الكاراتيه، والألعاب الإلكترونية. وتحقيقاً لتوجهات الهيئة العامة للرياضةالتي يعتني النادي بتطويرها إضافة إلى استقطاب عدد محدود من اللاعبين الأجانب. ويشارك النادي في عدة ألعاب رياضية مختلفة (غير كرة القدم) وهي: الملاكمة، كرة اليد، الكاراتيه، والألعاب الإلكترونية. وتحقيقًا لتوجهات الهيئة العامة للرياضة بتطوير مختلف الألعاب الرياضية في المملكة، فقد سارع النادي في بداية عام 1441هـ بإنشاء ستة رياضات جديدة وهي: الدراجات، التايكوندو، كرة الطائرة، السباحة، تنس الطاولة، القدرة والتحمل.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection:
                        TextDirection.rtl, // ترتيب النص من اليمين لليسار
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ball.jpg', // استبدل هذا بمسار الصورة الخاص بك
                        height: 100, // ارتفاع الصورة
                        width: 100, // عرض الصورة
                      ),
                      const SizedBox(height: 16), // تباعد بين الصورة والنص
                      Column(
                        children: [
                          Container(
                            color: Colors.white, // لون الخلفية
                            padding: const EdgeInsets.all(
                                16), // هنا يمكنك تعديل التباعد الداخلي للنص
                            child: const Column(
                              children: [
                                Text(
                                  ' كرة القدم',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection
                                      .rtl, // ترتيب النص من اليمين لليسار
                                ),
                                SizedBox(height: 16), // تباعد بين النصين
                                Text(
                                  'واشتهر اسم النادي في لعبة كرة القدم حيث يلعب في الدوري الممتاز منذ عام ١٤٠٦هـ والذي يطلق عليه حاليا اسم دوري محمد بن سلمان للمحترفين. وحقق النادي أفضل ترتيب له في بعض المواسم باحتلاله المركز الخامس، وحصل مرّتين على بطولة  دوري الدرجة الأولى السعودي عامي 1992م و2008م، كما فاز بدوري الدرجة الثانية السعودي في عام 2006م، وكأس الأمير فيصل بن فهد لأندية الدرجة الأولى والثانية عام 2006م ، ويعتمد النادي أساساً في تزويد الفريق الأول لكرة القدم باللّاعبين على الفئات السنّية التي يعتني النادي بتطويرها إضافة إلى استقطاب عدد محدود من اللّاعبين الأجانب.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection
                                      .rtl, // ترتيب النص من اليمين لليسار
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
