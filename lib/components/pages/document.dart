import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Document extends StatefulWidget {
  const Document({Key? key}) : super(key: key);

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  void openBrowser() async {
    const url = 'https://www.alraedclub.sa/site/img/wathika.pdf';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('وثيقة نادي الرائد'),
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
      body: Center(
        child: ElevatedButton(
          onPressed: openBrowser,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color.fromARGB(255, 137, 42, 35), // تغيير لون الخلفية هنا
          ),
          child: const Text('وثيقة الخطة الإستراتيجية لنادي الرائد'),
        ),
      ),
    );
  }
}
