import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {

    String? nomUser;
    String? apellido;
    String? correoElectronico;
    String? password;

    User({
        required this.nomUser,
        required this.apellido,
        required this.correoElectronico,
        required this.password,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        nomUser: json["nomUser"],
        apellido: json["apellido"],
        correoElectronico: json["correoElectronico"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "nomUser": nomUser,
        "apellido": apellido,
        "correoElectronico": correoElectronico,
        "password": password,
    };
}
