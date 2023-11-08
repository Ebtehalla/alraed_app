import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Volunteer_model.dart';


class VolunteerApis {
  static Future<bool> addMessageToFirestore(
    VolunteerModel volunteerModel,
  ) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference technicalSupport =
          firestore.collection('volunteer');
      // Add the course data to Firestore
      await firestore.runTransaction((transaction) async {
        transaction.set(
          technicalSupport.doc(),
          volunteerModel.toMap(),
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
