import 'package:flutter/material.dart';
import 'User.dart';
import 'dart:convert'; // Import ini mungkin diperlukan jika Anda menggunakan jsonDecode/jsonEncode

void main() {
  // 1. Konversi Object Dart ke JSON (Map<String, dynamic>)
  print('--- Object Dart ke JSON ---');
  // Membuat objek User
  User user = User(
    id: 1,
    name: 'John Doe',
    email: 'john@example.com',
    createdAt: DateTime.now(),
  );

  // Mengkonversi objek User menjadi Map JSON
  Map<String, dynamic> userJson = user.toJson();
  print('User JSON: $userJson');

  // 2. Konversi JSON (Map<String, dynamic>) ke Object Dart
  print('\n--- JSON ke Object Dart ---');
  // Contoh data JSON dalam bentuk Map
  Map<String, dynamic> jsonData = {
    'id': 2,
    'name': 'Jane Doe',
    'email': 'jane@example.com',
    'created_at': '2024-01-01T10:00:00.000Z',
  };

  // Membuat objek User dari Map JSON menggunakan factory constructor
  User userFromJson = User.fromJson(jsonData);
  print('User from JSON: ${userFromJson.name}');
  print('Created At: ${userFromJson.createdAt}');
}