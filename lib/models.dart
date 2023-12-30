class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String phone;
  int userRole;
  Image? asset;

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
    asset: json["asset"] != null
        ? Image.fromJson(json["asset"])
        : Image(
      fileName: "temp",
      filePath:
      "https://api.nabeey.uz/Images/e342893178ab49fd85a8570f3ba598d2.jpg",
    ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "phone": phone,
    "userRole": userRole,
    "asset": asset == null
        ? Image(
        fileName: "temp",
        filePath:
        "https://api.nabeey.uz/Images/e342893178ab49fd85a8570f3ba598d2.jpg")
        : asset!.toJson(),
  };
}

class Category {
  int id;
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

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "image": image,
    "books": List<dynamic>.from(books.map((x) => x)),
    "audios": List<dynamic>.from(audios.map((x) => x)),
    "videos": List<dynamic>.from(videos.map((x) => x)),
    "articles": List<dynamic>.from(articles.map((x) => x)),
  };
}

class Image {
  String fileName;
  String filePath;

  Image({
    required this.fileName,
    required this.filePath,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    fileName: json["fileName"],
    filePath: json["filePath"],
  );

  Map<String, dynamic> toJson() => {
    "fileName": fileName,
    "filePath": filePath,
  };
}

class FileClass {
  String fileName;
  String filePath;

  FileClass({
    required this.fileName,
    required this.filePath,
  });

  factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
    fileName: json["fileName"],
    filePath: json["filePath"],
  );

  Map<String, dynamic> toJson() => {
    "fileName": fileName,
    "filePath": filePath,
  };
}

class ArticleData {
  int id;
  String text;
  Category category;
  Image image;
  User user;

  ArticleData({
    required this.id,
    required this.text,
    required this.category,
    required this.image,
    required this.user,
  });

  factory ArticleData.fromJson(Map<String, dynamic> json) => ArticleData(
    id: json["id"],
    text: json["text"],
    category: Category.fromJson(json["category"]),
    image: Image.fromJson(json["image"]),
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
    "category": category.toJson(),
    "image": image.toJson(),
    "user": user.toJson(),
  };
}

class AudioData {
  int id;
  String title;
  String description;
  FileClass audio;

  AudioData({
    required this.id,
    required this.title,
    required this.description,
    required this.audio,
  });

  factory AudioData.fromJson(Map<String, dynamic> json) => AudioData(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    audio: FileClass.fromJson(json["audio"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "audio": audio.toJson(),
  };
}

class BookData {
  int id;
  String title;
  String author;
  String description;
  FileClass file;
  FileClass image;

  BookData({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.file,
    required this.image,
  });

  factory BookData.fromJson(Map<String, dynamic> json) => BookData(
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
