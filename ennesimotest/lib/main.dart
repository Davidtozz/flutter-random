import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'ListGenerator';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 32, 75, 132),
          title: Text(appTitle),
          
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 11, 161, 242),
        ),
        body: Column(
          children: const [
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  
                  scrollDirection: Axis.vertical,
                  child: ReadTextFile(),
                )),
          ],
        ),
      ),
    );
  }
}

class ReadTextFile extends StatefulWidget {
  const ReadTextFile({Key? key}) : super(key: key);

  @override
  _ReadTextFileState createState() => _ReadTextFileState();
}

class _ReadTextFileState extends State<ReadTextFile> {
  String dataFromFile = "";
  static List<String> listOne =      []; //contains all jobs.txt content, from top to bottom
  

  Future<void> readText() async {
    final String response = await rootBundle.loadString('assets/jobs.txt');
    listOne = response.split(','); 
     int randomIndex = Random().nextInt(listOne.length);
    setState(() {
   
      if (listOne.length > 2) {
        dataFromFile += listOne[Random().nextInt(listOne.length - 1)];
      } else if (listOne.length == 1) {
        dataFromFile += listOne.first;
      }
    });
  
  }

// //-------stackoverflow answer, try 1--------------------
//   @override

  void initData() async {
    await readText();
  }

  @override
  void initState() {
    super.initState();
    initData();
    Timer.periodic(Duration(milliseconds: 300), ((timer) => readText()) );
  }

@override
  Widget build(BuildContext context) {
    // readText();
    // showRandomJob();
    return Container(child: Center(child: Text(dataFromFile, style: TextStyle(fontSize: 50, backgroundColor: Color.fromARGB(255, 255, 255, 2) ),)));
  }
  //  @override
  // void initState() {
  //   super.initState();
  //   // change text after 1 sec
  //   Timer(Duration(seconds: 5), () async {
  //     await readText();
  //   });
  }
  
// // ----------------------------------------------------

  
