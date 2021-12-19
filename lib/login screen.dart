import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Image.asset('image/BackGround.png',
              width:375,
                height: 812),
            ),
            Container(child:
              Column(children: [
                Center(child: Container(margin: EdgeInsets.only(top: 151,bottom: 76),
                    child: Image.asset('image/eat-wow-01 1.png',height: 40.72,width: 250,)),),
             Stack(
               children: [
                 Container
                   (
                   child: Center(
                     child: Image.asset('image/Rectangle.png',
                       width: 376,
                       height: 585,
                     ),
                   ),
                 ),
                 Container(child:
                 Column(mainAxisAlignment: MainAxisAlignment.start,

                     children:[
                   Container(margin: EdgeInsets.only(top: 20,bottom: 20),
                       child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),

                   Text('Email ID',),
                   Container(margin: EdgeInsets.only(top: 10,bottom: 10,left: 80,right: 80),width: 370,
                       child: TextField(decoration: InputDecoration(hintText: 'Email@gmail.com',
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.purple))),)),
                   Column(mainAxisAlignment:MainAxisAlignment.start,children:[
                     Text('Password')]),
                   Container(margin: EdgeInsets.only(top: 10,bottom: 10,left: 80,right: 80),width: 370,
                       child: TextField(decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye),hintText: 'Password',
                       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(color: Colors.purple))),)),
                       Container(width: 150,
                         height: 45,
                         color: Colors.blue,
                         margin: EdgeInsets.only(top: 10,bottom: 10,left: 100,right: 100),
                         padding: EdgeInsets.only(top: 15,bottom:15 ,left: 50,right:50 ),
                         child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),),
                       Text('or',style: TextStyle(color: Colors.grey),),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Container(margin: EdgeInsets.only(top: 20,),
                             child: Stack(children:[ Image.asset('image/button bg.png'),
                             Container(margin: EdgeInsets.all(14),
                                 child: Image.asset('image/Google.png'))])),
                         Container(margin: EdgeInsets.only(top: 20,),
                             child: Stack(children:[ Image.asset('image/button bg copy.png'),
                             Container(margin: EdgeInsets.all(14),
                               child: Row(children: [Icon(Icons.facebook_outlined),
                               Text('facebook')],),
                             )
                             ])),

                       ],),
                       Container(margin: EdgeInsets.only(top: 50),child:
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                           children:[ Text('Not yet a member.'),Text('Sign up')]),
                       ),
                       SvgPicture.asset('image/Path 106.svg')
                 ]))

               ],
             )
              ],),)

        ],),
      ),
    );
  }
}
