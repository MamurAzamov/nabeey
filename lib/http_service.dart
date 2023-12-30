import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book_page.dart';

import 'json.dart';

String base = "api.nabeey.uz";

Map<String, List> contentType = {
  "articles": ["/api/article/get-by-category/", articlesFromJson],
  "article": ["/api/article/get/", articleFromJson],
  "audios": ["/api/content-audios/get-by-categoryId/", audiosFromJson],
  "books": ["/api/books/get-by-categoryId/", booksFromJson],
};

// Future<dynamic>? fetchContent({int? id, String? type}) async {
//   final uri = Uri.http(
//       base, "${contentType[type]![0]}${id == null ? '' : id.toString()}");
//   try {
//     final response = await get(uri);
//     if (response.statusCode == 200) {
//       final data = contentType[type]![1](response.body);
//       return data;
//     } else {
//       throw Exception('Server returned status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     rethrow;
//   }
// }

Future<dynamic>? fetchContent({int? id, String? type}) async {
  final data = contentType[type]![1](jsons[type]);
  return data;
}
