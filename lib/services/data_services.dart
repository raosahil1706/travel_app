import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "https://api.postman.com/collections/16882906-1aa947e1-6f64-4b7d-a705-9190083b59c3?access_key=PMAT-01HJABXTBECDJQSY7BHM7C7P12";
  getInfo() async {
    var apiUrl = '/getPlaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list=json.decode
      }
    } catch (e) {
      print(e);
    }
  }
}
