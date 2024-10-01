import "package:flutter/material.dart";
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
const Myapp({super.key});
@override
 Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title:const Text("container app"),
        centerTitle: true,
        backgroundColor: Colors.amber,

      ),
      body: Center(
        child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children:[
          Container(
          height:100,
          width: 100,
          color: Colors.pink,
        ),
        Container(
          height:100,
          width: 100,
          color: Colors.pink[50],
        ),
        Container(
          height:100,
          width: 100,
          color: Colors.pink[100],
        ),
        
        ]
        ),
      ),
    ),
  );
 }
}