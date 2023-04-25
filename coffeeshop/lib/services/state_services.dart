import 'dart:convert';
import 'package:coffeeshop/services/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Weatherservices {
  Future<recipy> fetchRecords(String recipyee) async {
    //final response = await http.get(Uri.parse(AppUrl.Lahore));
    final queryParameter = {
      'query': recipyee,
      'appKey': 'f509ec1115a4477aaac076a02d5e3ec0',
    };
    final uri = Uri.https(
      'https://api.spoonacular.com/food/products/search?query=biryani&apiKey=f509ec1115a4477aaac076a02d5e3ec0'
      //'https://api.spoonacular.com','/food/products/search',queryParameter
       );
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var data1 = jsonDecode(response.body);

      return recipy.fromJson(data1);
    } else {
      throw Exception('Error');
    }
  }
}
