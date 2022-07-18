// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 20, bottom: 15),
                child: Card(
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.red,
                        onPressed: () {
                          if (email == 'mateusmoitinho23@gmail.com' &&
                              password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            ('login invalido');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: const Text('Entrar',
                                textAlign: TextAlign.center)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                Image.asset('assets/images/background.jpg', fit: BoxFit.cover)),
        Container(color: Colors.black.withOpacity(0.3)),
        _body(),
      ],
    ));
  }
}
