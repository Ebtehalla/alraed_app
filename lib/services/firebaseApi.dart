import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createNews(String title, String imageUrl, String category,
      String content, String time) async {
    final CollectionReference newsCollection = _firestore.collection('news');
    await newsCollection.add({
      'title': title,
      'imageUrl': imageUrl,
      'category': category,
      'content': content,
      'time': time,
    });
  }

  Future<List<DocumentSnapshot>> getData(String collectionName) async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      List<DocumentSnapshot> documents = querySnapshot.docs;
      return documents;
    } catch (e) {
      print('Error reading documents: $e');
      return [];
    }
  }
}
