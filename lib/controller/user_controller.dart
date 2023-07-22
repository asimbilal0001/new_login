import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/screens/home_screen.dart';

class NewUserController extends GetxController {
  TextEditingController contEmail = TextEditingController();
  TextEditingController contPass = TextEditingController();
  TextEditingController contName = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  void signIn() {
    // if (formKey2.currentState!.validate()) {
    Get.snackbar('Success', 'User Logged in successfully.');
    Get.to(
        transition: Transition.cupertino,
        duration: Duration(seconds: 1),
        () => HomeScreen());
    // } else {
    //   Get.snackbar('Failed', 'Something Went Wrong.',
    //       backgroundColor: Colors.red);
    // }
    clearFields();
  }

  clearFields() {
    contEmail.clear();
    contName.clear();
    contPass.clear();
  }
}
