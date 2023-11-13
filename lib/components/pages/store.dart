// ignore_for_file: prefer_const_constructors

import 'package:alradi_app/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
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
          onPressed: () async {
            const url = 'https://store.alraedclub.sa/';
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            } else {
              throw 'Could not launch $url';
            }
          },
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
