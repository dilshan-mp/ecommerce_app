// lib/services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List?> fetchPopularProducts() async {
    try {
      final response = await http.get(
        Uri.parse("https://fakestoreapi.com/products/"),
      );
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (error) {
      print('Error fetching products: $error');
      return null;
    }
  }
}
