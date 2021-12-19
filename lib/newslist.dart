import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart'as http;
import 'model.dart';

class Viewnews extends StatefulWidget {
  const Viewnews({Key? key}) : super(key: key);

  @override
  _ViewnewsState createState() => _ViewnewsState();
}


class _ViewnewsState extends State<Viewnews> {

  var newsList =List<Model>.empty();
  bool isloading=true;
Future<List<Model>> getApiData()async{
  String Url="https://newsapi.org/v2/everything?q=tesla&from=2021-10-11&sortBy=publishedAt&apiKey=7dc7d2f7c7ce4a968fbce89410687994";
  Uri myuri=Uri.parse(Url);
  var client=http.Client();
  var response= await client.get(myuri);
  print( response.body);
  if (response.statusCode==200){
    isloading=false;
    setState((){});
  }
  var data=jsonDecode(response.body);
  var news= data["articles"];
  print(news[0]["title"]);
  return modelFromJson(jsonEncode(news));

}
setList()async{
  newsList=await getApiData();
  print (newsList[0].title);



}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setList();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
