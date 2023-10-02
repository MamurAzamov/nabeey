import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nabeey_app/model/book_model.dart';

class BookService {
  static Future<BookModel> fetchBooks() async {
    const BASE = 'thejama.uz';
    const getAllBooks = '/api/books/get-all';
    final response = await http.get(Uri.parse(BASE + getAllBooks));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return bookModelFromJson(jsonData);
    } else {
      throw Exception(
          'Malumotlarni olishda xatolik yuz berdi: ${response.statusCode}');
    }
  }
}
