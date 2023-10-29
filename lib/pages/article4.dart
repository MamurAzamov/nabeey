import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../model/article_model.dart';
import '../services/article_service.dart';
import '../services/bloc_service.dart';

class Article4 extends StatefulWidget {
  const Article4({super.key});

  @override
  State<Article4> createState() => _Article4State();
}

class _Article4State extends State<Article4> {
  late Future<ArticleModel> futureArticle;

  @override
  void initState() {
    super.initState();
    futureArticle = fetchArticle4();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: (){
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.navigateToArticlePage);
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: ListView(
            children: [
              Container(
                height: 228,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/article3.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              FutureBuilder<ArticleModel>(
                future: futureArticle,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Xatolik yuz berdi: ${snapshot.error}');
                  } else {
                    final article = snapshot.data;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(article!.data.category.name, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
                        const SizedBox(height: 25,),
                        Text(article.data.text, style: const TextStyle(fontSize: 18),),
                        Text('Image URL: ${article.data.image.filePath}'),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ));
  }
}