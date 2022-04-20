import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:chat/components/button.dart';
import 'package:chat/components/chakratext.dart';

class ComuIemu extends StatelessWidget {
  const ComuIemu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ChakraText(data: 'Au mbare,', //Text widget with Chrakra Petch font already applied
              fontSize: 40, 
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
             ChakraText(data: "Comu iemu", fontSize: 40,
              style: TextStyle(
                fontFamily: 'ChakraPetch',
                fontStyle: FontStyle.normal,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(0, 1),
                    blurRadius: 3
                  ),
                ],
              ),
            ),
            const SizedBox(height: 73),
               Button(label: 'Fozza Accuminciamu', onPressed: () {
                Navigator.pushNamed(context, '/auth');
              }),
               

            ],
          )
      
      ),
    );
  }
}
