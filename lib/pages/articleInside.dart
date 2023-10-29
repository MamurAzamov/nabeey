import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../model/article_model.dart';
import '../services/article_service.dart';
import '../services/bloc_service.dart';

class ArticleInside extends StatefulWidget {
  const ArticleInside({super.key});

  @override
  State<ArticleInside> createState() => _ArticleInsideState();
}

class _ArticleInsideState extends State<ArticleInside> {
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
                      image: AssetImage("assets/images/article.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 20,),
              FutureBuilder<ArticleModel?>(
                future: fetchArticleData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData) {
                    return const Center(child: Text('No data available'));
                  } else {
                    final articleModel = snapshot.data!;
                    final category = articleModel.data.category;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(category.name, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
                        const SizedBox(height: 25,),
                        Text(category.description, style: const TextStyle(fontSize: 18,),),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(height: 20,),
              FutureBuilder<ArticleModel?>(
                future: fetchArticleData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData) {
                    return const Center(child: Text('No data available'));
                  } else {
                    final articleModel = snapshot.data!;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(articleModel.data.text,style: const TextStyle(fontSize: 18),),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),);
  }
}
