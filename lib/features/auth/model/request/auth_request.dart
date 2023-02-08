import 'dart:convert';

AuthRequest authRequestFromJson(String str) => AuthRequest.fromJson(json.decode(str));

String authRequestToJson(AuthRequest data) => json.encode(data.toJson());

class AuthRequest {
  AuthRequest({
    required this.username,
    required this.password,
  });

  String username;
  String password;

  factory AuthRequest.fromJson(Map<String, dynamic> json) => AuthRequest(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}
