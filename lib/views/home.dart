import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/categori_model.dart';
import 'package:news_app/views/article_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticalModel> articles = new List<ArticalModel>();

  bool _loading=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }
  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("News"),
            SizedBox(width: 5.0,),
            Text("Daily",style: TextStyle(
              color: Colors.pink[800],
            ),),
          ],
        ),
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ): SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget> [

              ///categories
              Container(

                height: 70.0,
                child: ListView.builder(
                  itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                    return CategoryTile(
                      imageUrl: categories[index].imageUrl,
                      categorieName: categories[index].categoryName,
                    );
                    }),
              ),

              ///Blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context,index){
                    return BlogTile(
                        imageUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url,
                    );

                    }),
              )
            ],
          ) ,
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl,categorieName;
  CategoryTile({this.imageUrl,this.categorieName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
                child: CachedNetworkImage
                  (imageUrl:imageUrl,width: 120.0,height: 60.0,fit: BoxFit.cover,)
            ),
            Container(
              alignment: Alignment.center,
              width: 120.0,height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.black26,
              ),

              child: Text(categorieName,style: TextStyle(
                color: Colors.white,
                fontSize:14.0,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl,title,desc,url;
  BlogTile ({@required this.imageUrl,@required this.title,@required this.desc,@required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ArticleView(
            blogUrl:url,
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            Text(title,style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height:8,),
            Text(desc,style: TextStyle(
              color: Colors.grey,
            ),),
          ],
        ),
      ),
    );
  }
}


