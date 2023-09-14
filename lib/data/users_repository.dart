import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_interceptor_example/data/user.dart';

import '../dio/dio.dart';

class UsersRepository {
  final Dio _dio;

  UsersRepository(this._dio);

  Future<List<User>> getUsers() async {
    final request = await _dio.get('https://randomuser.me/api/?results=100');
    if (request.statusCode == HttpStatus.ok) {
      return (request.data['results'] as List<dynamic>).map((user) => User.fromJson(user)).toList();
    }

    return [];
  }
}

final usersRepository = UsersRepository(dio);
