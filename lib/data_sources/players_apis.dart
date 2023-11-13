import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/player_model.dart';

class PlayersDataSources {
  static const String playersCollection = "players";
  // static Future<void> addPlayersToFirestore(PlayerModel player) async {
  //   try {
  //     FirebaseFirestore firestore = FirebaseFirestore.instance;
  //     CollectionReference players = firestore.collection(playersCollection);
  //     await firestore.runTransaction((transaction) async {
  //       transaction.set(
  //           players.doc(), player.copyWith(id: players.doc().id).toJson());
  //     });
  //     log('added to Firestore successfully!');
  //   } catch (e) {
  //     log('Error adding to Firestore: $e');
  //   }
  // }

  Future<List<PlayerModel>>? getPlayers() {
    try {
      return FirebaseFirestore.instance
          .collection(playersCollection)
          .get()
          .then((value) => value.docs.map((doc) {
                log(doc.data().toString());
                return PlayerModel.fromJson(doc.data());
              }).toList());
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
