import 'dart:convert';

import 'package:riverpodexm/Model/future_provider_model.dart';
import 'package:http/http.dart' as http;

class FutureProviderTestingRepository {
  Future<List<FutureProviderExampleModel>> GetFutureProviderData() async {
    try {
      final response =
          await http.get(Uri.parse("https://dummyjson.com/products"));

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> productsData = responseData['products'];
        final dataObj = productsData
            .map((e) => FutureProviderExampleModel.fromJson(e))
            .toList();
        return dataObj;
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to load data: $e");
    }
  }

  Future<FutureProviderExampleModel> getFutureProviderDataById(int id) async {
    try {
      final response =
          await http.get(Uri.parse("https://dummyjson.com/products/$id"));

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final FutureProviderExampleModel dataObj =
            FutureProviderExampleModel.fromJson(responseData);
        return dataObj;
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to load data: $e");
    }
  }
}
