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
        child:Row(mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Container(height:450,
          width:8,
          color: Colors.brown),
         Column(
         children:[
          const SizedBox(
            height: 100,
          ),
          Container(
          height:100,
          width: 200,
          color: Colors.orange,
        ),
        Container(
          height:100,
          width: 200,
          color: Colors.white,
          child:Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
        ),
        Container(
          height:100,
          width: 200,
          color: Colors.green,
        ),
         
        ],
        
        ),]
      ),
    )
  )
  );
 }
}