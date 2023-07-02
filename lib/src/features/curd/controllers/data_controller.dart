import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curd_firebase_flutter/src/common_widgets/my_textFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();

  void clearText() {
    usernameController.text = "";
    emailController.text = "";
    numberController.text = "";
    focusNode.requestFocus();
  }

  // Firebase Instance for store Data

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  addData() {
    firebaseFirestore.collection("Data-Details").doc();

  }
}
