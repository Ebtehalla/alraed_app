import 'package:alradi_app/data_sources/problem_apis.dart';
import 'package:alradi_app/models/problems_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../screens/homepage.dart';
import '../../services/validator.dart';
import '../drawer.dart';
import 'package:flutter/material.dart';

class Problem extends StatefulWidget {
  const Problem({Key? key}) : super(key: key);

  @override
  State<Problem> createState() => _ProblemState();
}

class _ProblemState extends State<Problem> {
   var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var subjectController = TextEditingController();
  GlobalKey<FormState> problemFormKey = GlobalKey<FormState>();
  void _openSocialMedia(String url) async {
  if (await canLaunchUrl(
    Uri.parse(url),
  )) {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  } else {
    throw 'Could not launch $url';
  }
}
    Future problem({
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    bool? res = await ProblemApis.addMessageToFirestore(
      ProblemModel(
        email: email,
        message: message,
        name: name,
        phone: phone,
      ),
    );
    if (res) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(
              title: 'نادي الرائد',
              imagePath: '',
            ),
          ));
    } else {
    }
  }
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/problem.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(3, 0),
                    ),
                  ],
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Form(
                    key: problemFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'تسجيل البلاغات والشكاوي',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.none,
                            decorationColor: Color.fromARGB(255, 152, 46, 39),
                            decorationThickness: 1.0,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'الاسم',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 152, 46, 39),
                              ),
                            ),
                          ),
                        ),
                         TextFormField(
                              controller: fullNameController,
                              validator: Validator.validateName,
                              decoration: InputDecoration(
                                hintText: 'أدخل  الأسم',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the desired border radius here
                                ),
                              ),
                            ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'رقم الجوال',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 152, 46, 39)),
                            ),
                          ),
                        ),
                        TextFormField(
                              controller: phoneNumberController,
                              keyboardType: TextInputType.number,
                              validator: Validator.validateMobile,
                              decoration: InputDecoration(
                                hintText: ' أدخل رقم جوالك ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the desired border radius here
                                ),
                              ),
                            ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'البريد الألكتروني',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 152, 46, 39)),
                            ),
                          ),
                        ),
                        TextFormField(
                              controller: emailController,
                              validator: Validator.validateEmail,
                              decoration: InputDecoration(
                                hintText: '  أدخل بريدك الألكتروني ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the desired border radius here
                                ),
                              ),
                            ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'الموضوع',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 152, 46, 39)),
                            ),
                          ),
                        ),
                         TextFormField(
                              controller: subjectController,
                              validator: Validator.validateEmpty,
                              decoration: InputDecoration(
                                hintText: ' الموضوع ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the desired border radius here
                                ),
                              ),
                            ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                           onPressed: () {
                                if (problemFormKey.currentState!.validate()) {
                                  problem(
                                    name: fullNameController.text,
                                    email: phoneNumberController.text,
                                    phone: emailController.text,
                                    message: subjectController.text,
                                  );
                                }
                              },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 14, 15, 14),
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 20,
                            ),
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          child: const Text('إرسال'),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
