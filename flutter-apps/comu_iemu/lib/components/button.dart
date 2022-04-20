import 'package:flutter/material.dart';
import 'package:chat/authscreen.dart';

class Button extends StatelessWidget {
  final String label; //Testo del Button
  final Function onPressed; //Funzione che viene eseguita al click del Button

  const Button({Key? key, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //go to next oage
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthenticationForm()),
        );
      },
  
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.fromLTRB(36, 20, 36, 20)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
          backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(
                  97, 90, 178, 255))), //pagina successiva, coming soon
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(0, 1),
                  blurRadius: 3),
            ],
            fontFamily: 'ChakraPetch',
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 24),
      ),
    );
  }
}
