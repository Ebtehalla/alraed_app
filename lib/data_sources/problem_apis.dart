import 'dart:developer';

import '../models/problems_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ProblemApis {
  static Future<bool> addMessageToFirestore(
    ProblemModel problemModel,
  ) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference technicalSupport =
          firestore.collection('problem');
      // Add the course data to Firestore
      await firestore.runTransaction((transaction) async {
        transaction.set(
          technicalSupport.doc(),
          problemModel.toMap(),
        );
      });
      log('Technical Support added to Firestore successfully!');
      return true;
    } catch (e) {
      log('Error adding Technical Support to Firestore: $e');
      return false;
    }
  }
}
