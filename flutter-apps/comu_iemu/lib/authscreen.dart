import 'dart:io';
import 'package:chat/components/chakratext.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'components/button.dart';

class AuthenticationForm extends StatelessWidget {
  AssetImage defaultIcon = AssetImage('assets/images/icon.jpg');
  final ImagePicker _picker = ImagePicker();
  final _formKey = GlobalKey<FormState>;
  AuthenticationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ChakraText(data: 'Cu si?', fontSize: 32),
          SizedBox(height: 32),
          Form(
              child: Column(
            children: <Widget>[
              Container(
                //profile picture round container
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: defaultIcon,
                    
                  ),
                  onTap: () async {
                    
                    //TODO: add image picker
                    
          
                  },
                ),
              )
            ],
          )),

          const SizedBox(height: 50),
          //Username input field
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              constraints: const BoxConstraints(
                maxWidth: 320,
              ),
              labelText: 'U to nomu',
              labelStyle: const TextStyle(
                fontFamily: 'ChakraPetch',
                fontSize: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          const SizedBox(height: 20),
          //Password input field
          TextFormField(
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
              constraints: const BoxConstraints(
                maxWidth: 320,
              ),
              labelText: 'A to password',
              labelStyle: const TextStyle(
                fontFamily: 'ChakraPetch',
                fontSize: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          const SizedBox(height: 20),

          //Number input field
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: InputDecoration(
              constraints: const BoxConstraints(
                maxWidth: 320,
              ),
              labelText: 'Nummuru',
              labelStyle: const TextStyle(
                fontFamily: 'ChakraPetch',
                fontSize: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Button(
              label: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, '/chat');
              }),
        ],
      )),
    );
  }
}
