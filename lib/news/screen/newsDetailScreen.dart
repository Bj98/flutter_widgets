import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';
import 'package:text_wizards/news/model/news.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailScreen extends StatelessWidget {
  News news;

  NewsDetailScreen({this.news});

  getAuthor(String author){
    if(author!=null){
      return author;
    }
    else{
      return '';
    }
  }

  getImage(String imageUrl){
    if(imageUrl!=null){
      return Image.network(imageUrl);
    }
    else{
      return SizedBox.shrink();
    }
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        text: 'NEWS API IMPLEMENTATION',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 14.0 ),
        child: ListView(children: <Widget>[
          Text(news.title,style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.bold),),
          Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 12.0 ),
              child: Text(getAuthor(news.author),style: TextStyle(color:Colors.grey.shade700),)
          ),
          getImage(news.urlToImage),
          Padding(
              padding: const EdgeInsets.only(top:10.0,bottom: 12.0)  ,
              child: Text(news.content)),
          RaisedButton(
            onPressed: (){
              _launchURL(news.url);
            },
            color: Colors.black,
            child: Text('Read Full NEWS',style: TextStyle(color: Colors.white),),
          )
        ]
        ),
      ),
    );
  }
}
