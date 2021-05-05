import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News{

  List<ArticalModel> news = [];

  Future<void>getNews() async {

    String url="https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b4da4f42d6ff49da84d2b05ad9482c6e";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element['description']!=null){

          ArticalModel articleModel = new ArticalModel(
            title: element['title'],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"],
          );

          news.add(articleModel);
        }

      });
  }

  }
}