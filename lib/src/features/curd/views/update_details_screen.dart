import 'package:curd_firebase_flutter/src/common_widgets/my_textFormField.dart';
import 'package:curd_firebase_flutter/src/features/curd/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class updateDetailsScreen extends StatelessWidget {
  updateDetailsScreen({super.key});

final dcontroller = Get.put(DataController());

  //username validator possible structure
  Function(String)usernameValidator = (String username){
    if(username.isEmpty){
      return 'Username empty';
    }else if(username.length < 3){
      return 'Username short';
    }
    return null;
  };





  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title:Text("Update Details"),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            myTextField(focusNode: focusNode,hintText: "Username", controller: dcontroller.usernameController, validator: usernameValidator,),
            myTextField(hintText: "Email", controller: dcontroller.emailController, validator: usernameValidator),
            myTextField(hintText: "Phone-Number", controller: dcontroller.numberController, validator: usernameValidator),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {

              }, child: Text("Update Data")),
              ElevatedButton(onPressed: () {
                dcontroller.clearText();
              }, child: Text("Clear Data")),
            ],
          )
          ],
        )
      ),
    ));
  }
}
