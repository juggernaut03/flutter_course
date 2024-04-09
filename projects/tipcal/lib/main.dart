import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TipCal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tipcal(),
    );
  }
}

class Tipcal extends StatefulWidget {
  const Tipcal({super.key});

  @override
  State<Tipcal> createState() => _TipcalState();
}

class _TipcalState extends State<Tipcal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: Text("TipCal", style: TextStyle(color: Color(0xFF811A39),fontSize: 30, fontWeight: FontWeight.w900),),
        backgroundColor: Color(0xFFD5294D),
        centerTitle: true,
      ),
      body:
       Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color:Color(0xFFFBD0D5),
            borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Total per person",
                  style:TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
                ),
                Text("\$30", 
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFFFEF2F3),
                  width: 5,
                  
                  
              
                )),
                child: const Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.attach_money),
                        labelText: 'bill amount'
                      ),
                    ),
                    // Split bill area
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       
                         
                            Text('Split', style: TextStyle(fontSize: 18),),
                        Row(
                              children: [
                              

                                IconButton( onPressed:null ,icon:Icon(Icons.remove) ),
                                Text('3'),
                                IconButton(onPressed:null, icon: Icon(Icons.add) ),
                              ],
                            ),
                            
                         
                        ],
                    ),
                    
                  ],
                ),
              ),
            )
             
        ],
      ),
    );
  }
}



