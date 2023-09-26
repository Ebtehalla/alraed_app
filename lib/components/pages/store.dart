import 'package:alradi_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  void openBrowser() async {
    const url = 'https://store.alraedclub.sa/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متجر'),
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
                Color.fromARGB(255, 137, 42, 35), // تغيير لون الخلفية هنا
          ),
          child: const Text('انتقل الى المتجر'),
        ),
      ),
    );
  }
}
