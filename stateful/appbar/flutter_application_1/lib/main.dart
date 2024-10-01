import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatefulWidget {
  const ContainerApp({super.key});
  @override
  State createState()=>_ContainerApp();
  }
  class _ContainerApp extends State{

  bool changecolor=true;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("toggle color"),
          centerTitle: true,
          backgroundColor:changecolor?Colors.purple:Colors.pink,

        ),
        body:Center(child: 
        Container(
          height: 250,
          width: 250,
          color: changecolor?Colors.pink:Colors.blue,

        ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          if (changecolor){
            changecolor=false;}
            else{
              changecolor=true;
            }
            setState(() {});
        },

            
            child: const Icon(Icons.add),


          
        
        
        ),
        ),
      );
  
  }
}

