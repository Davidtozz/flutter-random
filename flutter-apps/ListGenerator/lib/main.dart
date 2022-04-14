import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'ListGenerator';
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 32, 75, 132),
          title: const Text(appTitle),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 11, 161, 242),
        ),
        body: Column(
          children:  [
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: BoxDecoration(
                      
                      
                      border: Border.all(color: Colors.lightBlue)
                      ),
                    child: ReadTextFile(), 
                    ),
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
  ReadTextFileState createState() => ReadTextFileState();
}

class ReadTextFileState extends State<ReadTextFile> {
  

  String dataFromFile = "";
  static List<String> listOne =
      []; //contains all jobs.txt content, from top to bottom

  Future<void> readText() async {
    final String response = await rootBundle.loadString('assets/jobs.txt');
    listOne = response.split(',');

    setState(() {
      if (listOne.length > 2) {
        dataFromFile += listOne[Random().nextInt(listOne.length - 1)];
      } else if (listOne.length == 1) {
        dataFromFile += listOne.first;
      }
    });
  }

  void initData() async {
    await readText();
  }

  @override
  void initState() {
    super.initState();
    initData();
    Timer.periodic(const Duration(seconds: 5), ((timer) => readText()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      dataFromFile,
      style: const TextStyle(
          fontSize: 50),
    ));
  }
}
 
