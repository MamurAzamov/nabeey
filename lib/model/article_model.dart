class ArticleModel {
  int statusCode;
  String message;
  Data data;

  ArticleModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
    statusCode: json["statusCode"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );
}

class Data {
  var id;
  String text;
  Category category;
  Image image;
  User user;

  Data({
    required this.id,
    required this.text,
    required this.category,
    required this.image,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    text: json["text"],
    category: Category.fromJson(json["category"]),
    image: Image.fromJson(json["image"]),
    user: User.fromJson(json["user"]),
  );
}

class Category {
  var id;
  String name;
  String description;
  dynamic image;
  List<dynamic> books;
  List<dynamic> audios;
  List<dynamic> videos;
  List<dynamic> articles;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.books,
    required this.audios,
    required this.videos,
    required this.articles,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    image: json["image"],
    books: List<dynamic>.from(json["books"].map((x) => x)),
    audios: List<dynamic>.from(json["audios"].map((x) => x)),
    videos: List<dynamic>.from(json["videos"].map((x) => x)),
    articles: List<dynamic>.from(json["articles"].map((x) => x)),
  );
}

class Image {
  var id;
  String fileName;
  String filePath;

  Image({
    required this.id,
    required this.fileName,
    required this.filePath,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    fileName: json["fileName"],
    filePath: json["filePath"],
  );
}

class User {
  var id;
  String firstName;
  String lastName;
  String email;
  String phone;
  int userRole;
  dynamic asset;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.userRole,
    required this.asset,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    phone: json["phone"],
    userRole: json["userRole"],
    asset: json["asset"],
  );
}