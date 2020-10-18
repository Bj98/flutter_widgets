import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:text_wizards/customWidgets/myCustomAppBar.dart';
import 'package:text_wizards/news/model/news.dart';
import 'package:text_wizards/news/screen/newsDetailScreen.dart';

import '../newsWidget.dart';


class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  List<News> newsData=new List();

  bool isLoading=true;

  getTitle(String title){
    if(title!=null){
      return title;
    }
    else{
      return '';
    }
  }

  getNewsData() async{
    try {
      var url ='http://newsapi.org/v2/everything?q=bitcoin&from=2020-09-18&sortBy=publishedAt&apiKey=4ddad47619494b54b357e5de516d1667';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['articles'].forEach((v){
          newsData.add(News.fromJson(v));
        }
        );
        isLoading=false;
        setState(() {

        });

       log('News API successful');
       //log(newsData[1].author);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    }catch(e){
      log(e.toString());
    }
  }

  @override
  void initState() {
    getNewsData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        text: 'NEWS API IMPLEMENTATION',
      ),
      body:isLoading?
      Center(child: CircularProgressIndicator()):
      Padding(
        padding: const EdgeInsets.symmetric(vertical:10.0,horizontal:14.0),
        child: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemCount: newsData.length,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.only(bottom:14.0,top: 10 ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (BuildContext context){
                        return NewsDetailScreen(news: newsData[index],);
                      },
                    ));
                  },
                    child: NewsWidget(news: newsData[index],)));
          },
          separatorBuilder: (BuildContext context,int index)=>const Divider(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
