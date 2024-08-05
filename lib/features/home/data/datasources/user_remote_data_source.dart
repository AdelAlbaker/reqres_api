

import 'dart:convert';

import 'package:reqres_api/core/error/exceptions.dart';
import 'package:reqres_api/core/network/error_message_model.dart';
import 'package:reqres_api/core/usecase/base_usecase.dart';
import 'package:reqres_api/features/home/domain/entities/user_entity.dart';
import 'package:reqres_api/features/home/domain/usecases/get_user_by_id_usecase.dart';
import 'package:http/http.dart' as http;

import '../../../../core/network/api_constance.dart';
import '../../domain/usecases/get_users_usecase.dart';
import '../models/user_model.dart';

abstract class BasesUserRemoteDataSource {

  Future<UserModel> getUserById(UserIdParameter parameter);
  Future<List<UserEntity>> getUsers(GetUsersParameter parameter);
}
class UserRemoteDataSource extends BasesUserRemoteDataSource {
  @override
  Future<UserModel> getUserById(UserIdParameter parameter) async {
    print("GET USER BY ID FUNC ");
    final result = await http.get(
      Uri.parse(ApiConstace.getUserById(parameter.id)),

    );
    Map<String, dynamic> response = json.decode(result.body);
    print("RESPONSE"+response['support'].toString());
    print("-----------------");
    if (result.statusCode == 200) {

      print(UserModel.fromJson((response['data'])));
      print("END----------");
      return UserModel.fromJson(response['data']);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(jsonDecode(result.body))
      );
    }
  }

  @override
  Future<List<UserEntity>> getUsers(GetUsersParameter parameter)async {
    final result = await http.get(
      Uri.parse(ApiConstace.getUsers(parameter.page)),
    );
    Map<String,dynamic> response=json.decode(result.body);
    print(response.toString());
    if(result.statusCode == 401){}

    if (result.statusCode == 200) {
      print("GOOOOD"+response.toString());

      return List.from(
          (response['data'] as List).map((e) => UserModel.fromJson(e)));
    }
    else {
      print("BAAAD"+response.toString());
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(json.decode(result.body)));
    }


  }

}