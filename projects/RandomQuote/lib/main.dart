import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});
   
  

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _currentFortune ="";
  final _fortuneList =[
    "A journey of a thousand miles begins with a single step.",
    "Good things come to those who wait, but better things come to those who work for it.",
    "Your talents will be recognized and rewarded.",
    "Happiness is not something you postpone for the future; it is something you design for the present",
      "Embrace change; it brings new opportunities.",
      "Your kindness will lead you to great success.",
      "Success is the sum of small efforts repeated day in and day out",
  ];
  void _randomFortune()
  {
      var random = Random();
      int fortune = random.nextInt(_fortuneList.length);
      setState(() {
        _currentFortune = _fortuneList[fortune]; 
      });
     
      print(_currentFortune);
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      title: Text('FortuneApp', style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.green, 
      centerTitle: true,
      ),
    

      body: Center(
        
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Image.asset('assets/images/fortune.png',
            width: 200, 
            height: 200,
            fit:BoxFit.cover),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                  
                  'Hello this is your fortune',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                
                ),
             ),
           ),
            Card(
              child: Text(
              '${_currentFortune}',

              style: Theme.of(context).textTheme.bodySmall,
            ),
            
            ),
            ElevatedButton(onPressed: _randomFortune , child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Get Fortune'),
            ))
          
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed:_randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),  
    );
  }
}
