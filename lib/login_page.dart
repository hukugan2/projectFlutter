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
                width: 250,
                height: 220,
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
                          filled: true,
                          fillColor: Color.fromARGB(255, 176, 241, 192),
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 176, 241, 192),
                          icon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                      const SizedBox(height: 20),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 17, 190, 1),
                        onPressed: () {
                          if (email == 'mateusmoitinho23@gmail.com' &&
                              password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('login invalido');
                          }
                        },
                        child: const SizedBox(
                            height: 35,
                            width: double.infinity,
                            child: Center(
                                child: Text('Entrar',
                                    textAlign: TextAlign.center))),
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
            child: Container(
                color: Color.fromARGB(255, 38, 230, 102).withOpacity(0.8))),
        _body(),
      ],
    ));
  }
}
