// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:uuid/uuid.dart';

import '../../data_sources/audience_poll_apis.dart';
import '../../models/audience_poll_model.dart';
import '../../models/opinion_poll_modell.dart';
import '../../screens/homepage.dart';
import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Pagevisit extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  Pagevisit({Key? key}) : super(key: key);
  List<OpinionPoll> opinions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أستطلاع الزوار'),
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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: FormBuilder(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'استبيان الزوار يهدف هذا الاستبيان إلى إتاحة الفرصة لزوار نادي الرائد السعودي لإبداء آرائهم عن مرافق النادي بهدف التحسين والتطوير، علمًا بأن المعلومات المقدمة ستبقى سريّة.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '1. موقع النادي مناسب للزوار ',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '1. موقع النادي مناسب للزوار',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 1,
                          question: "'1. موقع النادي مناسب للزوار '",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '2. .يوجد في منشأة النادي مسبح قانوني ومميز',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '2. .يوجد في منشأة النادي مسبح قانوني ومميز',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 2,
                          question:
                              "'2. .يوجد في منشأة النادي مسبح قانوني ومميز'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '3. يوجد في منشأة النادي مبنى إداري مهيأ وفيه جميع التجهيزات',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '3. يوجد في منشأة النادي مبنى إداري مهيأ وفيه جميع التجهيزات',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 3,
                          question:
                              "'3. يوجد في منشأة النادي مبنى إداري مهيأ وفيه جميع التجهيزات'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '4. .يوجد لوحات توعوية للمحافظة على مرافق النادي',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '4. .يوجد لوحات توعوية للمحافظة على مرافق النادي',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 4,
                          question:
                              "'4. .يوجد لوحات توعوية للمحافظة على مرافق النادي'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '5.دورات المياة بمنشأة النادي كافية ونظيفة',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '5.دورات المياة بمنشأة النادي كافية ونظيفة',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 5,
                          question:
                              "'5.دورات المياة بمنشأة النادي كافية ونظيفة'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '6. يوجد بمنشأة النادي أماكن لجلوس الزوار',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '6. يوجد بمنشأة النادي أماكن لجلوس الزوار',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 6,
                          question:
                              "'6. يوجد بمنشأة النادي أماكن لجلوس الزوار'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '7..أدوات السلامة في منشأة النادي متوفرة في اماكن واضحة ',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '7..أدوات السلامة في منشأة النادي متوفرة في اماكن واضحة ',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 1,
                          question:
                              "'7..أدوات السلامة في منشأة النادي متوفرة في اماكن واضحة '",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '8.الأجهزة الطبية بصالة العلاج الطبيعي جيدة',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '8.الأجهزة الطبية بصالة العلاج الطبيعي جيدة',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 8,
                          question:
                              "'8.الأجهزة الطبية بصالة العلاج الطبيعي جيدة'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '9. صيانة مرافق منشأة النادي والحفاظ عليها واضح لزوار النادي',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '9. صيانة مرافق منشأة النادي والحفاظ عليها واضح لزوار النادي',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 9,
                          question:
                              "'9. صيانة مرافق منشأة النادي والحفاظ عليها واضح لزوار النادي'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '10.صالة الألعاب المغطاة بمنشأة النادي مميزة',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '10.صالة الألعاب المغطاة بمنشأة النادي مميزة',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 10,
                          question:
                              "'10.صالة الألعاب المغطاة بمنشأة النادي مميزة'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'أيّ تعليقات أو ملحوظات أو اقتراحات يمكن إضافتها حول مرافق النادي',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color: Colors.black54, // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderTextField(
                    name:
                        'أيّ تعليقات أو ملحوظات أو اقتراحات يمكن إضافتها حول مرافق النادي',
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'مقترحات',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      // call api to post information to, if success = clear fields show success msg, false show faild msg & don't clear fields
                      _formKey.currentState?.save();
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        log(opinions.toString());
                        final AudiancePoll audiancePoll = AudiancePoll(
                            id: const Uuid().v8(),
                            polls: opinions,
                            message: "");
                        await AudiencePollApis.addMessageToFirestore(
                                audiancePoll)
                            .then((value) {
                          opinions.clear();
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const HomePage(title: "", imagePath: ""),
                          ));
                          return ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("تم ارسال البيانات بنجاح")));
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("تم ارسال البيانات بنجاح")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black54, // Set the desired color here
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20), // Adjust the padding here
                      textStyle: const TextStyle(
                          fontSize: 18), // Adjust the font size here
                    ),
                    child: Container(),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
