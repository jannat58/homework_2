import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  _home2State createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Untittled'),
        centerTitle: true,
        leading: Icon(Icons.view_headline),

      ),
      body: Column(
        children: [
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Collection Offers',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:20
              ),
              ),
              Container(color: Colors.white,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Text('view all', style:TextStyle(color: Colors.grey,),))

            ],
          ),),
          Container(
              //decoration: BoxDecoration( ),
              margin: EdgeInsets.all(5),
              color: Colors.white,
              height: 150,
              child:
           Row(
             children: [
            Stack(
              children:[ Image.asset('image/mealbox.jpg',
              height: 150,),
                Container(

                  margin:EdgeInsets.only(top:5,left: 5),
                  color: Colors.red,
                  child: Text('10% OFF',style: TextStyle(color: Colors.white),),),
            ],),
           Container(

             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Container(margin: EdgeInsets.only(top: 10, left: 10),
                 child:Column(crossAxisAlignment:CrossAxisAlignment.start,

                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children:[
               Text('MealBox',
               style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15 ),),
               Text('Italian,Chinese,Indian',
               style: TextStyle(color: Colors.grey),)
             ],),),
             Container(
               margin: EdgeInsets.only(left:10,top: 20,bottom: 20),

               child:Text('________',
               style: TextStyle(color: Colors.grey),) ,
             ),
                 Container(
                   margin:EdgeInsets.only(left:10),
                 padding: EdgeInsets.only(bottom: 5),
                 child:Column(crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     Row(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       Icon(Icons.star,
                       color: Colors.red,size: 18,),
                       Text('4.1   ',style: TextStyle(color: Colors.grey),),
                       Icon(Icons.circle,
                       size: 5,
                         color: Colors.grey,
                       ),
                       Text('  40-50 mins',
                       style: TextStyle(color: Colors.grey),)
                     ],),
                     Row(children: [
                       Text('Free Delivery ',style: TextStyle(color: Colors.grey),),
                       Icon(Icons.circle,
                         size: 5,
                         color: Colors.grey,
                       ),
                       Icon(Icons.euro,
                       size: 15,color: Colors.grey,),
                       Text(' 30.0 for two',style: TextStyle(color: Colors.grey))
                     ],)
                   ],
                 ),)
             ],),
           )
           ],
          )),
          Container(
            //decoration: BoxDecoration( ),
              margin: EdgeInsets.all(5),
              color: Colors.white,
              height: 150,
              child:
              Row(children: [
                Stack(
                  children:[ Image.asset('image/biriany.jpg',
                    height: 150,),
                    Container(

                      margin:EdgeInsets.only(top:5,left: 5),
                      color: Colors.red,
                      child: Text('10% OFF',style: TextStyle(color: Colors.white),),),
                  ],),
                Container(

                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(margin: EdgeInsets.only(top: 10, left: 10),
                        child:Column(crossAxisAlignment:CrossAxisAlignment.start,

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Text('MealBox',
                              style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15 ),),
                            Text('Italian,Chinese,Indian',
                              style: TextStyle(color: Colors.grey),)
                          ],),),
                      Container(
                        margin: EdgeInsets.only(left:10,top: 20,bottom: 20),

                        child:Text('________',
                          style: TextStyle(color: Colors.grey),) ,
                      ),
                      Container(
                        margin:EdgeInsets.only(left:10),
                        padding: EdgeInsets.only(bottom: 5),
                        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star,
                                  color: Colors.red,size: 18,),
                                Text('4.1   ',style: TextStyle(color: Colors.grey),),
                                Icon(Icons.circle,
                                  size: 5,
                                  color: Colors.grey,
                                ),
                                Text('  40-50 mins',
                                  style: TextStyle(color: Colors.grey),)
                              ],),
                            Row(children: [
                              Text('Free Delivery ',style: TextStyle(color: Colors.grey),),
                              Icon(Icons.circle,
                                size: 5,
                                color: Colors.grey,
                              ),
                              Icon(Icons.euro,
                                size: 15,color: Colors.grey,),
                              Text(' 30.0 for two',style: TextStyle(color: Colors.grey))
                            ],)
                          ],
                        ),)
                    ],),
                )
              ],
              )),

         // Container(child: )
        ],
      ),
    );
  }
}
