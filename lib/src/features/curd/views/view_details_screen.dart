import 'package:curd_firebase_flutter/src/features/curd/model/detail_model.dart';
import 'package:curd_firebase_flutter/src/features/curd/views/add_details_screen.dart';
import 'package:curd_firebase_flutter/src/features/curd/views/update_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class viewDetails extends StatelessWidget {
   viewDetails({super.key});

   List<DetailModel> detailsList = [
     DetailModel(id: 'id', username: 'Harsh', email: 'h@gmail.com', phonenumber: 9876541230),
     DetailModel(id: 'id', username: 'dhaval', email: 'd@gmail.com', phonenumber: 9874563201),
     DetailModel(id: 'id', username: 'anant', email: 'a@gmail.com', phonenumber: 9865741230)

   ];

   @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("List Of Details"),
        backgroundColor: Colors.lightBlue,
      ),
          body: detailsList.isEmpty ?
              Center(
                child: Text("No Data Available"),
              ) :
              ListView.builder(
                itemCount: detailsList.length,
                  itemBuilder: (context, index) =>
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username : ${detailsList[index].username}"),
                          Text("Email : ${detailsList[index].email}"),
                          Text("Phone-Number : ${detailsList[index].phonenumber}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(onPressed: () {
                                Get.to(updateDetailsScreen());
                              }, child: Text("edit")),
                              ElevatedButton(onPressed: () {

                              }, child: Text("delete")),
                            ],
                          )
                        ],
                      )
                    )

              ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              Get.to(addDetailsScreen());
            },
          ),
    ));
  }
}
