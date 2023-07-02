import 'dart:convert';

DetailModel DetailModelFromJson(String str) => DetailModel.fromJson(json.decode(str));

String DetailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel {
   String? id;
  final String username;
  final String email;
  final int phonenumber;

  DetailModel({
     this.id,
    required this.username,
    required this.email,
    required this.phonenumber,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
    id: json["id"],
    username: json["username"],
    email: json["email"],
    phonenumber: json["phonenumber"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "email": email,
    "phonenumber": phonenumber,
  };
}
