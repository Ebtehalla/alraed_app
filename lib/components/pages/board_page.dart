// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data_sources/contact_us_apis.dart';
import '../../models/contact_us_model.dart';
import '../../screens/homepage.dart';
import '../../services/validator.dart';
import '../drawer.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var subjectController = TextEditingController();
  GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  void openSocialMedia(String url) async {
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
    Future contactUs({
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    bool? res = await ContactUsAPIS.addMessageToFirestore(
      ContactUsModel(
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
      backgroundColor: const Color.fromARGB(255, 247, 249, 247),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
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
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Form(
                    key: contactFormKey,
                    child: Column(
                      children: [
                        const Text(
                          'تواصل معنا',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(139, 124, 40, 40),
                            decorationThickness: 1.0,
                          ),
                        ),
                        const SizedBox(height: 16),
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
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (contactFormKey.currentState!.validate()) {
                              contactUs(
                                name: fullNameController.text,
                                email: phoneNumberController.text,
                                phone: emailController.text,
                                message: subjectController.text,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 14, 15, 14),
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
                        const SizedBox(height: 16),
                        const Text(
                          ' : تواصل معنا عبر ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset('assets/new_twitter.png'),
                              onPressed: () => openSocialMedia(
                                  'https://twitter.com/alraedclub'),
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/snapchat.png'), // استبدل بأيقونة سناب شات الخاصة بك
                              onPressed: () => openSocialMedia(
                                  'https://www.snapchat.com/add/alraed_club'),
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/instagram.png'), // استبدل بأيقونة واتساب الخاصة بك
                              onPressed: () => openSocialMedia(
                                  'https://www.instagram.com/alraedclub/'),
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/facebook.png'), // استبدل بأيقونة واتساب الخاصة بك
                              onPressed: () => openSocialMedia(
                                  'https://www.facebook.com/alraedclubsa/'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom:
                            5.0), // Change the value to adjust the padding size
                    child: Center(
                      child: Container(
                        alignment: Alignment.centerRight,
                        color: Colors.black,
                        child: const Text(
                          'جميع الحقوق محفوظة لنادي الرائد 2023 صمم بواسطة بانوراما القصيم',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
