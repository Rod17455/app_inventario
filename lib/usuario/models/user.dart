import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {

    String? nomUser;
    String? apellido;
    String? correoElectronico;
    String? password;
    String? mensaje;
    String? estaAutenticado;
    String? email;
    List<dynamic>? roles;
    String? token;
    String? refreshTokenExpiration;

    User({
        this.nomUser,
        this.apellido,
        this.correoElectronico,
        this.password,
        this.email,
        this.estaAutenticado,
        this.mensaje,
        this.token,
        this.refreshTokenExpiration,
        this.roles

    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        nomUser: json["nomUser"],
        apellido: json["apellido"],
        correoElectronico: json["correoElectronico"],
        password: json["password"],
        mensaje: json["mensaje"],
        estaAutenticado: json["estaAutenticado"],
        email: json["email"],
        roles: List<dynamic>.from(json["roles"].map((x) => x)),
        token: json["token"],
        refreshTokenExpiration: json["refreshTokenExpiration"],

    );

    Map<String, dynamic> toJson() => {
        "nomUser": nomUser,
        "apellido": apellido,
        "correoElectronico": correoElectronico,
        "password": password,
        "mensaje": mensaje,
        "estaAutenticado": estaAutenticado,
        "email": email,
        "roles": List<dynamic>.from(roles!.map((x) => x)),
        "token": token,
        "refreshTokenExpiration": refreshTokenExpiration,
    };
}
