import 'dart:convert';
import 'package:dashboard/repository/url_provider.dart';
import 'package:http/http.dart' as http;

class BaseApiProvider {
  Future<Map<String, dynamic>> get(url, {Map<String, dynamic>? queryParameters}) async {
    try {
      final uri = Uri.http(UrlProvider.baseUrl, url, queryParameters);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception('Request failed: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('GET request error: $e');
    }
  }
}
