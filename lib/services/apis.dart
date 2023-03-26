import 'dart:convert';

import 'package:http/http.dart';

import '../models/userModel.dart';

class ApiServices {
  final String baseUrl = 'https://dummyjson.com/';

  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = [];
    const String query = "users";
    final url = Uri.parse('$baseUrl$query');
    final response = await get(url);

    if (response.statusCode == 200) {
      final List<dynamic> resUsers = jsonDecode(response.body)["users"];

      for (var user in resUsers) {
        users.add(UserModel.fromJson(user));
      }

      return users;
    }
    throw Error();
  }
}
