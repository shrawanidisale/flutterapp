import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: QuizApp(),
    );
  }
  }
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});
    @override
    State createState()=> _QuizApp();
  
  }
class _QuizApp extends State{
  List<Map> allquestions=[
    {"questions":"datatype in dart which can store int and double value?",
    "options":["num","int","double","var"],
    "correctanswer":0},
    {"questions":"++ is which type of operator?",
    "options":["binary","logical","unary","relational"],
    "correctanswer":2},
    {"questions":"who is founder of dart?",
    "options":["james goslin","kasper","steve jobs","elon musk"],
    "correctanswer":1},
    {"questions":"which datatype can change its value at runtime ?",
    "options":["num","int","double","dynamic"],
    "correctanswer":3},
    {"questions":"who is founser of windows?",
    "options":["bill gates","kasper","elon musk","james glosin"],
    "correctanswer":0},

  ];
  int queno=0;
     int selectedans=-1;
     int score=0;
    

    

    WidgetStateProperty<Color?> checkans(int answeredoption){
      if(selectedans!=-1){
        if(answeredoption==allquestions[queno]["correctanswer"]){
          return const WidgetStatePropertyAll(Colors.green);
        }else if(selectedans==answeredoption){
          return const WidgetStatePropertyAll(Colors.red);
        }else{
          return const WidgetStatePropertyAll(null);
        }
      }
      else{
        return const WidgetStatePropertyAll(null);
      }
    }

  
  
bool quepage=true;




  @override
  Widget build(BuildContext context) {
    
      return isQuestionScreen();
  }

    Scaffold isQuestionScreen(){
      if(quepage==true){
        return Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 146, 53, 162),
      ),
      body:  Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children:[
              const SizedBox(
                width:130 ,
              ),
              Text("questions:${queno+1}/${allquestions.length}",
              style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700

              ),
              ),
            ],
            ),
            const SizedBox(
              height: 30,
            ),
             Container(
              height: 50,
              width:390,
              color: Colors.amber,
              child: Text(
                allquestions[queno]["questions"],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink,
                ),
                
              ),
              ),
              const SizedBox(
                height: 50,

              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(style: ButtonStyle ( backgroundColor : checkans(0),),
                
                
                  onPressed: () {
                    if(selectedans==-1){
          selectedans=0;
          setState(() {}
          );
        }
        if(selectedans==allquestions[queno]["correctans"]){
          score++;
        }
      }, 
                  

                 child:Text(
                  allquestions[queno]['options'][0],
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                    color: Colors.blueGrey
                ),
                 ),
                  ),
                  
              ),
              const SizedBox(
                height: 25,
              ),
               SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(style: ButtonStyle ( backgroundColor : checkans(1),),
                  onPressed: () {
                     if(selectedans==-1){
          selectedans=1;
          setState(() {}
          );
        }
        if(selectedans==allquestions[queno]["correctans"]){
          score++;
        }
      }, 
     
                  

                 child:Text(
                  allquestions[queno]['options'][1],
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                    color: Colors.blueGrey
                ),
                 ),
                  ),
                  
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(style: ButtonStyle ( backgroundColor : checkans(2),),
                  onPressed: () {if(selectedans==-1){
          selectedans=2;
          setState(() {}
          );
        }
        if(selectedans==allquestions[queno]["correctans"]){
          score++;
        }
      }, 

                 child:Text(
                  allquestions[queno]['options'][2],
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                    color: Colors.blueGrey
                ),
                 ),
                  ),
                  
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(style: ButtonStyle ( backgroundColor : checkans(3),),
                  onPressed: () {
                    if(selectedans==-1){
          selectedans=3;
          setState(() {}
          );
        }
        if(selectedans==allquestions[queno]["correctans"]){
          score++;
        }
      }, 
                  

                 child:Text(
                  allquestions[queno]['options'][3],
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                    color: Colors.blueGrey
                ),
                 ),
                  ),
                 ),
                 ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {
      if(selectedans!=-1){
          if(queno<allquestions.length-1){
          queno++;
        }else{
          quepage=false;
      }
      selectedans=-1;
      setState(() {
        });}
      },
      backgroundColor: const Color.fromARGB(255, 89, 20, 101),
      child: const Icon(Icons.forward),
      ),
    ); 
  }

  else{
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",style: TextStyle(
          fontSize: 24,
          fontWeight:FontWeight.w900 ,
        ),),
        backgroundColor:Color.fromARGB(255, 146, 53, 162),
        centerTitle: true,
      ),
      body: Center(child:Column(children: [
        const SizedBox(
        height: 70,
        ),
       Image.network("https://quizizz.com/media/resource/gs/quizizz-media/quizzes/672bd029-b86b-41f0-9a26-fa382a6049f3"),
      const SizedBox(
        height: 30,
        ),
        Text("Score : $score / ${allquestions.length}",style:const  TextStyle(
          fontSize: 24,
          fontWeight:FontWeight.w900 ,
        ),
        ),
        const SizedBox(
        height: 30,
        ),
        Image.network("http://www.clipartbest.com/cliparts/4T9/6bL/4T96bLEac.png",width: 400,height: 100),
      ],
      ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        quepage=true;
        setState(() {
        });
        queno=0;
        score=0;
      },
      backgroundColor: const Color.fromARGB(255, 89, 20, 101),
      child: const Text("Reset",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500),),
      ),

      );
  }
    }
}