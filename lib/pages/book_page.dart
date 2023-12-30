import '../http_service.dart';
import '../imports.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});
  static const String id = "book_page";

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return getScaffold(
      child: Expanded(
        child: FutureBuilder(
          future: fetchContent(type: "books"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            } else if (!snapshot.hasData) {
              return const Text('No data available.');
            } else {
              final books = snapshot.data!.data;
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bookContent(context, i, books),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            bottom: 20,
                            right: 14,
                          ),
                          height: 148,
                          width: 121,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(books[i].image.filePath),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 185,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                books[i].title,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                books[i].author,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  Widget bookContent(BuildContext context, int i, List<BookData> books) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          books[i].title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
          top: 20,
        ),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 148,
                  width: 121,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(books[i].image.filePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  width: 185,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        books[i].title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        books[i].author,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              books[i].description,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SfPdfViewer.network(
              books[i].file.filePath,
            ),
          ],
        ),
      ),
    );
  }
}

Books booksFromJson(String str) => Books.fromJson(json.decode(str));

String booksToJson(Books data) => json.encode(data.toJson());

class Books {
  int statusCode;
  String message;
  List<BookData> data;

  Books({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
    statusCode: json["statusCode"],
    message: json["message"],
    data: List<BookData>.from(
      json["data"].map(
            (x) => BookData.fromJson(x),
      ),
    ),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": List<dynamic>.from(
      data.map(
            (x) => x.toJson(),
      ),
    ),
  };
}
