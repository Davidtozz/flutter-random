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
        body: Column(children: const[
          Expanded(
              flex: 1, 
              child:  SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:   ReadTextFile(),
              )
            ),
          ], 
        )  , //child: 
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
 
  Future<void> readText() async {
    final String response = await rootBundle.loadString('assets/jobs.txt');
    setState(() {
      dataFromFile = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    readText();
    return Container(

      child:Text(dataFromFile)
      // child: Center(
      //   child:Text(dataFromFile)
      //   )
    );
  }
}