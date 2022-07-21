import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';


class Chat extends StatefulWidget{
  @override
  _oneState createState() => _oneState();
 }

 class _oneState extends State<Chat> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Tawk(
    directChatLink: 'https://tawk.to/chat/62d16c68b0d10b6f3e7c80b8/1g810uv3g',
    visitor: TawkVisitor(
        name: 'tinaton',
        email: 'bismillah@gmail.com',
    ),
)
    ); 
  }
 }