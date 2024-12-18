import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firestoreservies {
  Future? add(String task, String description, BuildContext context) async {
    return await FirebaseFirestore.instance
        .collection("todo")
        .add({"task": task, "description": description, "checkbox": false});
  }

  Future? updaTask(String task, String description, String documentId,
      BuildContext context) async {
    return await FirebaseFirestore.instance
        .collection(("todo"))
        .doc(documentId)
        .update({
      "task": task,
      "description": description,
    });
  }

  Future? delete(String documentId) async {
    return await FirebaseFirestore.instance
        .collection(("todo"))
        .doc(documentId)
        .delete();
  }
}
