import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
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
    return Container(child: Text(dataFromFile)
        // child: Center(
        //   child:Text(dataFromFile)
        //   )
        );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final appTitle = 'Read Text File';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 32, 75, 132),
        title: Text(
          appTitle,
          style:
              TextStyle(fontFamily: 'Montserrat', fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 11, 161, 242),
      ),
      body: const ReadTextFile(),
    );
  }
}
