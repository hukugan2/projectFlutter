import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'package:contatos/contacts_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Home Page'),
          actions: [
            CustomSwhitch(),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 10,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/contacts_page');
          },
        ));
  }
}

class CustomSwhitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changTheme();
      },
    );
  }
}
