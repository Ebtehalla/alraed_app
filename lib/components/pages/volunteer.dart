// ignore_for_file: use_build_context_synchronously

import 'package:url_launcher/url_launcher.dart';

import '../../data_sources/volunteer_apis.dart';
import '../../models/Volunteer_model.dart';
import '../../screens/homepage.dart';
import '../../services/validator.dart';
import '../drawer.dart';
import 'package:flutter/material.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({Key? key}) : super(key: key);

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var ageController = TextEditingController();
  GlobalKey<FormState> volunteerFormKey = GlobalKey<FormState>();
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

  Future volunteer({
    required String name,
    required String email,
    required String phone,
    required String age,
  }) async {
    bool? res = await VolunteerApis.addMessageToFirestore(
      VolunteerModel(
        email: email,
        phone: phone,
        age: age,
        name: name,
        gender: gender ?? "",
        bac: bac ?? "",
        jobType: jobType ?? "",
        joinType: joinType ?? "",
        voluTime: voluTime ?? "",
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
    } else {}
  }

  String? gender;
  onChangeGender(String val) {
    setState(() {
      gender = val;
    });
  }

  String? bac;
  onChangebac(String val) {
    setState(() {
      bac = val;
    });
  }

  String? jobType;
  onChangejobType(String val) {
    setState(() {
      jobType = val;
    });
  }

  String? joinType;
  onChangejoinType(String val) {
    setState(() {
      joinType = val;
    });
  }

  String? voluTime;
  onChangevoluTime(String val) {
    setState(() {
      voluTime = val;
    });
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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key: volunteerFormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/volunter.png'),
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
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'تسجيل في الأعمال التطوعية بنادي الرائد',
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
                            keyboardType: TextInputType.name,
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
                            validator: Validator.validateName,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'رقم الجوال',
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
                            validator: Validator.validateName,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'البريد الألكتروني',
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
                                'العمر',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 152, 46, 39)),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: ageController,
                            validator: Validator.validateName,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'العمر',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Set the desired border radius here
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'الجنس',
                                  textAlign: TextAlign
                                      .right, // تحديد اتجاه النص إلى اليمين

                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 152, 46, 39)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  items: <String>['ذكر', 'أنثى']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    onChangeGender(newValue ?? "");
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'أخر مؤهل دراسي',
                                  textAlign: TextAlign
                                      .right, // تحديد اتجاه النص إلى اليمين

                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 152, 46, 39)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  items: <String>[
                                    'أقل من ثانوي',
                                    'ثانوي',
                                    'بكالوريس',
                                    'دبلوم عالي',
                                    'ماجستير',
                                    'دكتوراة',
                                    'آخرى'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    onChangebac(newValue ?? "");
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'نوع العمل التطوعي',
                                  textAlign: TextAlign
                                      .right, // تحديد اتجاه النص إلى اليمين

                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 152, 46, 39)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  items: <String>[
                                    'رياضي',
                                    'إجتماعي',
                                    'ثقافي',
                                    'صحي',
                                    'الكوارث والطوارئ',
                                    'آخرى',
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    onChangejobType(newValue ?? "");
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'نوع المشاركة',
                                  textAlign: TextAlign
                                      .right, // تحديد اتجاه النص إلى اليمين

                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 152, 46, 39)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  items: <String>[
                                    'قائد',
                                    'عضو',
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    onChangejoinType(newValue ?? "");
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'أوقات التطوع',
                                  textAlign: TextAlign
                                      .right, // تحديد اتجاه النص إلى اليمين

                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 152, 46, 39)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  items: <String>[
                                    'مفتوح',
                                    'أيام مناسبات النادي',
                                    'أيام الاجازات الصيفية',
                                    'أيام اجازة نهاية الاسبوع',
                                    'أيام المواسم',
                                    'المناسبات العامة',
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    onChangevoluTime(newValue ?? "");
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              if (volunteerFormKey.currentState!.validate() &&
                                  gender != null &&
                                  bac != null &&
                                  jobType != null &&
                                  joinType != null &&
                                  voluTime != null) {
                                volunteer(
                                  name: fullNameController.text,
                                  email: phoneNumberController.text,
                                  phone: emailController.text,
                                  age: ageController.text,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
