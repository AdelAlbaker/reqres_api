


import 'package:reqres_api/features/home/domain/entities/user_entity.dart';

class UserModel extends UserEntity{


  const UserModel({
    required super.id,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.avatar,
  });

  factory UserModel.fromJson(Map<String,dynamic>json)
  =>
      UserModel(
          id: json['id'],
          email: json['email'],
          firstName: json['first_name'],
          lastName: json['last_name'],
          avatar: json['avatar'],
      );
}