// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    String? nomUser;
    String? apellido;
    String? correoElectronico;
    String? password;
    String? sesionToken;
    List<String>? roles = [];

    User({
        this.nomUser,
        this.apellido,
        this.correoElectronico,
        this.password,
        this.sesionToken,
        this.roles
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        nomUser: json["userName"],
        apellido: json["apellido"],
        correoElectronico: json["email"],
        password: json["password"],
        sesionToken: json["token"],
        roles: json["roles"] == null ? [] : List<String>.from(json["roles"])
    );

    Map<String, dynamic> toJson() => {
        "userName": nomUser,
        "apellido": apellido,
        "email": correoElectronico,
        "password": password,
        "token": sesionToken,
        "roles": roles
    };
}
