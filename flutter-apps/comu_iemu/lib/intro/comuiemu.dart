import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';


class ComuIemu extends StatelessWidget {
  const ComuIemu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Au mbare,",
              style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: const Offset(0, 1),
                        blurRadius: 3),
                  ],
                  fontFamily: 'ChakraPetch',
                  fontSize: 40,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(height: 53),
            SvgPicture.asset('assets/images/trinacria.svg'),
            const SizedBox(height: 53),
            Text(
              "Comu iemu",
              style: TextStyle(
                  fontFamily: 'ChakraPetch',
                  fontSize: 40,
                  fontStyle: FontStyle.normal,
                  shadows: <Shadow>[
                    Shadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: const Offset(0, 1),
                        blurRadius: 3),
                  ]),
            ),
            const SizedBox(height: 47),
            TextButton(
              onPressed: null,
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                shape: MaterialStateProperty
                .all<RoundedRectangleBorder>
                (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
                  
                  backgroundColor: MaterialStateColor.resolveWith((states) =>Color.fromARGB(97, 90, 178, 255))), //pagina successiva, coming soon
              child: Text(
                "Fozza Accuminciamu",
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
            )
          ],
        )),
      ),
    );
  }
}
