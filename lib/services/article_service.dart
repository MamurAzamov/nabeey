import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/article_model.dart';

Future<ArticleModel?> fetchArticleData() async {
  final response = await http.get(Uri.parse('https://thejama.uz/api/article/get/1'));
  if (response.statusCode == 200) {
    return ArticleModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load article data');
  }
}
Future<Category?> fetchCategoryData() async {
  final response = await http.get(Uri.parse('https://thejama.uz/api/article/get/1'));
  if (response.statusCode == 200) {
    return Category.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load article data');
  }
}

Future<ArticleModel> fetchArticle2() async {
  final response = await http.get(Uri.parse('https://thejama.uz/api/article/get/2'));

  if (response.statusCode == 200) {
    return ArticleModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Ma\'lumotni olishda xatolik yuz berdi: ${response.statusCode}');
  }
}

Future<ArticleModel> fetchArticle3() async {
  final response = await http.get(Uri.parse('https://thejama.uz/api/article/get/3'));

  if (response.statusCode == 200) {
    return ArticleModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Ma\'lumotni olishda xatolik yuz berdi: ${response.statusCode}');
  }
}

Future<ArticleModel> fetchArticle4() async {
  final response = await http.get(Uri.parse('https://thejama.uz/api/article/get/4'));

  if (response.statusCode == 200) {
    return ArticleModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Ma\'lumotni olishda xatolik yuz berdi: ${response.statusCode}');
  }
}