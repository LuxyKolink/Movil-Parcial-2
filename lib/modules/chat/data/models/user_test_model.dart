import 'dart:convert';

class User {
  final String email;
  final String password;
  final String accessToken;

  User({
    required this.email,
    required this.password,
    required this.accessToken,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"] as String,
        password: json["password"] as String,
        accessToken: json["accessToken"] as String,
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "accessToken": accessToken,
      };
}
