import 'package:flutter/material.dart';
import 'package:text_wizards/news/model/news.dart';

class NewsWidget extends StatelessWidget {

  getAuthor(String author){
    if(author!=null){
      return author;
    }
    else{
      return '';
    }
  }
  News news;
  NewsWidget({this.news});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text(news.title,style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(top: 8.0 ),
              child: Text(getAuthor(news.author),style: TextStyle(color:Colors.grey.shade700),)
          ),
          //Text(news.publishedAt),
          Padding(
            padding:const EdgeInsets.only(top: 14.0),
            child: Row(
              children: <Widget>[
                Expanded(flex:3,child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                    child: Text(news.description))),
                Expanded(flex:1,child: Image.network(news.urlToImage))
              ],
            ),
          )
        ]) ;
  }
}
