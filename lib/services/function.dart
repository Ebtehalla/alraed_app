import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

void openSocialMedia(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void sortList(List<DocumentSnapshot> myList) {
  myList.removeWhere((element) {
    Map<String, dynamic> temp = element.data() as Map<String, dynamic>;

    return temp.containsKey("time") == false;
  });
  myList.sort((a, b) {
    DateTime firstMap = a["time"].toDate();

    DateTime secMap = b["time"].toDate();

    return secMap.compareTo(firstMap);
  });
}
