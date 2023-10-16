import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/player_model.dart';

class FirebaseApiService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createNews(String title, String imageUrl) async {
    final CollectionReference newsCollection = _firestore.collection('news');
    await newsCollection.add({
      'title': title,
      'imageUrl': imageUrl,
    });
  }

  Future<List<DocumentSnapshot>> getData(String collectionName) async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      List<DocumentSnapshot> documents = querySnapshot.docs;
      return documents;
    } catch (e) {
      log('Error reading documents: $e');
      return [];
    }
  }

  Future<List<PlayerModel>> getAllPlayers() async {
    CollectionReference playersCollection = _firestore.collection('players');
    return playersCollection.get().then((snapshot) {
      List<PlayerModel> playersList = [];
      for (var doc in snapshot.docs) {
        playersList
            .add(PlayerModel.fromJson(doc.data() as Map<String, dynamic>));
      }
      log(playersList.toString());
      return playersList;
    });
  }
}
