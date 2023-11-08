import '../drawer.dart';
import 'package:flutter/material.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({Key? key}) : super(key: key);

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
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
                    TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
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
                    TextField(
                      textAlign: TextAlign.right, // تحديد اتجاه النص إلى اليمين

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
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
                    TextField(
                      textAlign: TextAlign.right, // تحديد اتجاه النص إلى اليمين
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
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
                    TextField(
                      textAlign: TextAlign.right, // تحديد اتجاه النص إلى اليمين

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
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
                            textAlign:
                                TextAlign.right, // تحديد اتجاه النص إلى اليمين

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
                            items: <String>['ذكر', 'أنثى'].map((String value) {
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
                            textAlign:
                                TextAlign.right, // تحديد اتجاه النص إلى اليمين

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
                            textAlign:
                                TextAlign.right, // تحديد اتجاه النص إلى اليمين

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
                            textAlign:
                                TextAlign.right, // تحديد اتجاه النص إلى اليمين

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
                            textAlign:
                                TextAlign.right, // تحديد اتجاه النص إلى اليمين

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
                      onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
