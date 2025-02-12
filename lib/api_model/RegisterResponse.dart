class RegisterResponse {
  final String message;
  final UserData data;

  RegisterResponse({required this.message, required this.data});

  // Factory constructor to parse JSON
  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      message: json['message'],
      data: UserData.fromJson(json['data']),
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.toJson(),
    };
  }
}

class UserData {
  final String email;
  final String password;
  final String name;
  final String phone;
  final int avaterId;
  final String id;
  final String createdAt;
  final String updatedAt;
  final int v;

  UserData({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.avaterId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  // Factory constructor to parse JSON
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      email: json['email'],
      password: json['password'],
      name: json['name'],
      phone: json['phone'],
      avaterId: json['avaterId'],
      id: json['_id'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
      'avaterId': avaterId,
      '_id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '__v': v,
    };
  }
}
