import 'package:uuid/uuid.dart';

import '../../data_sources/audience_poll_apis.dart';
import '../../models/audience_poll_model.dart';
import '../../models/opinion_poll_modell.dart';
import '../../screens/homepage.dart';
import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Pageemplo extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  Pageemplo({Key? key}) : super(key: key);
  List<OpinionPoll> opinions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أستطلاع الموظفين'),
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
                  const SizedBox(height: 20),
                  const Text(
                    '  1. يقوم النادي بتوعية الموظفين وخاصة الجدد منهم باستراتيجية النادي وأنظمته وسياساته ولوائحه، باستخدام أساليب فعالة *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                    '  1. يقوم النادي بتوعية الموظفين وخاصة الجدد منهم باستراتيجية النادي وأنظمته وسياساته ولوائحه، باستخدام أساليب فعالة *',
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
                          question: "'  1. يقوم النادي بتوعية الموظفين وخاصة الجدد منهم باستراتيجية النادي وأنظمته وسياساته ولوائحه، باستخدام أساليب فعالة *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '2. الوصف الوظيفي للإدارات بالهيكل التنظيمي سهل وواضح',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '2. العمر',
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
                          question: "'2. الوصف الوظيفي للإدارات بالهيكل التنظيمي سهل وواضح'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '   3. يلتزم النادي بما جاء في خطته الاستراتيجية وخطط عمله السنوية',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '3. مكان الإقامة الحالي',
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
                          question: "'3. مكان الإقامة الحالي'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '4. يقوم النادي بتطبيق كافة أنظمة عمله وسياساته ولوائحه *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '4. يقوم النادي بتسويق المباريات عبر وسائل التواصل الاجتماعي والأماكن العامة',
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
                          question: "'4. يقوم النادي بتطبيق كافة أنظمة عمله وسياساته ولوائحه *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '5. إدارة النادي ملتزمة بالهيكل التنظيمي المعتمد',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '5. الأنشطة التسويقية التي يقوم بها النادي لجذب الجماهير لحضور المباريات كافية',
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
                          question: "'5. إدارة النادي ملتزمة بالهيكل التنظيمي المعتمد'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '6. يوجد وصف وظيفي متكامل لوظائف الهيكل التنظيمي',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '6. يوجد وصف وظيفي متكامل لوظائف الهيكل التنظيمي',
                    options: const [
                      FormBuilderFieldOption(value: 'راضي جداً'),
                      FormBuilderFieldOption(value: 'راضي'),
                      FormBuilderFieldOption(value: 'غير راضي'),
                      FormBuilderFieldOption(value: 'غير راضي جداً'),
                      FormBuilderFieldOption(value: 'محايد')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 6,
                          question: "'6. يوجد وصف وظيفي متكامل لوظائف الهيكل التنظيمي'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '7. هناك معايير واضحة وعادلة ومعلنة لترقية الموظفين بالنادي',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '7. هناك معايير واضحة وعادلة ومعلنة لترقية الموظفين بالنادي',
                    options: const [
                      FormBuilderFieldOption(value: 'راضي جداً'),
                      FormBuilderFieldOption(value: 'راضي'),
                      FormBuilderFieldOption(value: 'غير راضي'),
                      FormBuilderFieldOption(value: 'غير راضي جداً'),
                      FormBuilderFieldOption(value: 'محايد')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 7,
                          question:
                              "'7. هناك معايير واضحة وعادلة ومعلنة لترقية الموظفين بالنادي'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    ' 8. تقوم إدارة النادي بتنفيذ برامج تدريبية لتطوير مهارات الموظفين',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        ' 8. تقوم إدارة النادي بتنفيذ برامج تدريبية لتطوير مهارات الموظفين',
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
                              "' 8. تقوم إدارة النادي بتنفيذ برامج تدريبية لتطوير مهارات الموظفين'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    ' 9. يتم استطلاع الاحتياجات التدريبية والتطويرية للموظفين قبل إقرار أي برنامج تدريبي *  ',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        ' 9. يتم استطلاع الاحتياجات التدريبية والتطويرية للموظفين قبل إقرار أي برنامج تدريبي *  ',
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
                              "' 9. يتم استطلاع الاحتياجات التدريبية والتطويرية للموظفين قبل إقرار أي برنامج تدريبي *  '",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '10. يقوم النادي بتقدير الموظفين المميزين والمبدعين على كافة المستويات وفقاً لنظام مكافآت عادل ومعلن *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '10. يقوم النادي بتقدير الموظفين المميزين والمبدعين على كافة المستويات وفقاً لنظام مكافآت عادل ومعلن *',
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
                              "'10. يقوم النادي بتقدير الموظفين المميزين والمبدعين على كافة المستويات وفقاً لنظام مكافآت عادل ومعلن *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '11. يُطبق النادي نظام تقييم أداء عادل ويُقدم التغذية الراجعة للموظفين *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '11. يُطبق النادي نظام تقييم أداء عادل ويُقدم التغذية الراجعة للموظفين *',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 11,
                          question:
                              "'11. يُطبق النادي نظام تقييم أداء عادل ويُقدم التغذية الراجعة للموظفين *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '12. يستخدم النادي أساليب فعالة ومتنوعة للتواصل والاتصال مع الموظفين',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '12. يستخدم النادي أساليب فعالة ومتنوعة للتواصل والاتصال مع الموظفين',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 12,
                          question:
                              "'12. يستخدم النادي أساليب فعالة ومتنوعة للتواصل والاتصال مع الموظفين'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    ' 13. يُشجع النادي الموظفين على العمل مع بعضهم البعض بشكل فعال كفريق عمل واحد',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        ' 13. يُشجع النادي الموظفين على العمل مع بعضهم البعض بشكل فعال كفريق عمل واحد',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 13,
                          question:
                              "' 13. يُشجع النادي الموظفين على العمل مع بعضهم البعض بشكل فعال كفريق عمل واحد'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '14. يحرص النادي على إشراك الموظفين في عمليات التطوير واتخاذ القرارات',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '14. يحرص النادي على إشراك الموظفين في عمليات التطوير واتخاذ القرارات',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 14,
                          question:
                              " '14. يحرص النادي على إشراك الموظفين في عمليات التطوير واتخاذ القرارات'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '15. تتوافر بمنشأة النادي الجديدة المرافق المناسبة والكافية لاحتياجات الموظفين وسلامتهم *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '15. تتوافر بمنشأة النادي الجديدة المرافق المناسبة والكافية لاحتياجات الموظفين وسلامتهم *',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 15,
                          question:
                              "'15. تتوافر بمنشأة النادي الجديدة المرافق المناسبة والكافية لاحتياجات الموظفين وسلامتهم *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '16. تتوافر بمنشأة النادي الجديدة أجهزة الحاسب والبرمجيات اللازمة لإنجاز الأعمال',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name:
                        '16. تتوافر بمنشأة النادي الجديدة أجهزة الحاسب والبرمجيات اللازمة لإنجاز الأعمال',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 16,
                          question:
                              "'16. تتوافر بمنشأة النادي الجديدة أجهزة الحاسب والبرمجيات اللازمة لإنجاز الأعمال'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '17. يتمتع النادي بقيادة فعالة ومتعاونة *',
                    style: TextStyle(
                      fontSize: 17, // تحديد حجم النص هنا
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(139, 124, 40, 40), // تحديد لون النص ه
                    ),
                  ),
                  FormBuilderRadioGroup(
                    name: '17. يتمتع النادي بقيادة فعالة ومتعاونة *',
                    options: const [
                      FormBuilderFieldOption(value: 'غير موافق بشدة'),
                      FormBuilderFieldOption(value: 'غير موافق'),
                      FormBuilderFieldOption(value: 'موافق نوعاً ما'),
                      FormBuilderFieldOption(value: 'موافق'),
                      FormBuilderFieldOption(value: 'موافق بشدة')
                    ],
                    onSaved: (newValue) {
                      opinions.add(OpinionPoll(
                          id: 17,
                          question:
                              "'17. يتمتع النادي بقيادة فعالة ومتعاونة *'",
                          selection: newValue ?? ""));
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                     onPressed: () async {
                    // call api to post information to, if success = clear fields show success msg, false show faild msg & don't clear fields
                    bool sent = true; // نتيجة تسليم الفورم
                    _formKey.currentState?.save();
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      print(opinions);
                      final AudiancePoll audiancePoll = AudiancePoll(
                          id: const Uuid().v8(), polls: opinions, message: "");
                      await EmployeesPollApis.addMessageToFirestore(
                              audiancePoll)
                          .then((value) {
                        opinions.clear();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
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
                      backgroundColor: const Color.fromARGB(
                          255, 55, 122, 58), // Set the desired color here
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20), // Adjust the padding here
                      textStyle: const TextStyle(
                          fontSize: 18), // Adjust the font size here
                    ),
                    child: const Text('إرسال'),
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
