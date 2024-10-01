import "package:flutter/material.dart";
void main(){
  runApp(const myapp());
}
class myapp extends StatelessWidget{
const myapp({super.key});
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
        child:Container(
          height:100,
          width: 100,
          color: Colors.pink,
        ),
      ),
    ),
  );
 }
}