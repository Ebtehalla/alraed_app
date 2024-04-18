import 'package:alradi_app/services/function.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.shortestSide * 0.10,
          height: MediaQuery.of(context).size.shortestSide * 0.10,
          child: Image.asset('assets/logo.png'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // معلومات
            const Column(
              children: [
                Text(
                  'معلومات التواصل',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Media@alraedclub.sa'),
                Text('0163235858'),
              ],
            ),

            // العنوان
            Column(
              children: [
                const Text(
                  'العنوان',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Text(
                    'المملكة العربية السعودية - القصيم - بريدة',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ].reversed.toList(),
        ),
        // social media icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 55, // تحديد عرض الأيقونة هنا
              height: 55,
              child: IconButton(
                icon: Image.asset('assets/new_twitter.png'),
                onPressed: () =>
                    openSocialMedia('https://twitter.com/alraedclub'),
              ),
            ),
            SizedBox(
              width: 55, // تحديد عرض الأيقونة هنا
              height: 55,
              child: IconButton(
                icon: Image.asset(
                    'assets/snapchat.png'), // استبدل بأيقونة سناب شات الخاصة بك
                onPressed: () =>
                    openSocialMedia('https://www.snapchat.com/add/alraed_club'),
              ),
            ),
            SizedBox(
              width: 55, // تحديد عرض الأيقونة هنا
              height: 55,
              child: IconButton(
                icon: Image.asset(
                    'assets/instagram.png'), // استبدل بأيقونة واتساب الخاصة بك
                onPressed: () =>
                    openSocialMedia('https://www.instagram.com/alraedclub/'),
              ),
            ),
            SizedBox(
              width: 55, // تحديد عرض الأيقونة هنا
              height: 55,
              child: IconButton(
                icon: Image.asset(
                    'assets/facebook.png'), // استبدل بأيقونة واتساب الخاصة بك
                onPressed: () =>
                    openSocialMedia('https://www.facebook.com/alraedclubsa/'),
              ),
            ),
          ],
        ),
        const Text(
          'جميع الحقوق محفوظة لنادي الرائد 2023 صمم بواسطة بانورما القصيم',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black45,
          ),
        )
      ],
    );
  }
}
