import 'dart:convert';

import 'package:flutter_application_crud/mahasiswa.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.183.117:9001/api/v1/mahasiswa';

  Future<List<Mahasiswa>> getMahasiswa() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      Iterable<dynamic> data = json.decode(response.body);
      return data.map((json) => Mahasiswa.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load mahasiswa');
    }
  }

  Future<Mahasiswa> getMahasiswaById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));

    if (response.statusCode == 200) {
      dynamic data = json.decode(response.body);
      return Mahasiswa.fromJson(data);
    } else {
      throw Exception('Failed to load mahasiswa by ID');
    }
  }

  Future<Mahasiswa> createMahasiswa(Mahasiswa mahasiswa) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(mahasiswa.toJson()),
    );

    if (response.statusCode == 200) {
      return Mahasiswa.fromJson(json.decode(response.body));
    } else {
      print("Failed to create mahasiswa. Status code: ${response.statusCode}");
      print("Response body: ${response.body}");
      throw Exception('Failed to create mahasiswa');
    }
  }

  Future<Mahasiswa> updateMahasiswa(Mahasiswa mahasiswa) async {
    final response = await http.put(
      Uri.parse('$baseUrl/${mahasiswa.id}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'id': mahasiswa.id,
        'nama': mahasiswa.nama,
        'email': mahasiswa.email,
        'tgllahir': mahasiswa.tgllahir,
      }),
    );

    print("Response from server: ${response.body}");
    print(mahasiswa.nama);
    print(mahasiswa.id);
    print(mahasiswa.tgllahir);

    if (response.statusCode == 200) {
      print("Update successful");
      return Mahasiswa.fromJson(json.decode(response.body));
    } else {
      print("Update failed");
      throw Exception('Failed to update mahasiswa');
    }
  }

  Future<void> deleteMahasiswa(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));

    if (response.statusCode == 200) {
      print("Deletion successful");
    } else {
      print("Deletion failed. Status code: ${response.statusCode}");
      print("Response body: ${response.body}");
      throw Exception('Failed to delete mahasiswa');
    }
  }
}
