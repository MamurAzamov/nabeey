//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  int statusCode;
  String message;
  List<Datum> data;

  BookModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    statusCode: json["statusCode"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String title;
  String author;
  String description;
  FileClass file;
  FileClass image;

  Datum({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.file,
    required this.image,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    author: json["author"],
    description: json["description"],
    file: FileClass.fromJson(json["file"]),
    image: FileClass.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "author": author,
    "description": description,
    "file": file.toJson(),
    "image": image.toJson(),
  };
}

class FileClass {
  int id;
  String fileName;
  String filePath;

  FileClass({
    required this.id,
    required this.fileName,
    required this.filePath,
  });

  factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
    id: json["id"],
    fileName: json["fileName"],
    filePath: json["filePath"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fileName": fileName,
    "filePath": filePath,
  };
}
