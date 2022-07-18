import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Lista de Contatos',
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  final TextEditingController taskController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Form(
                key: _formKey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      controller: taskController,
                      style:
                          const TextStyle(fontSize: 32, color: Colors.black87),
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                          hintText: 'Escreva o novo contato...',
                          hintStyle: const TextStyle(fontSize: 20)),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Atenção o está campo vazio!';
                        }
                        return null;
                      },
                    )),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _tasks.add(taskController.text);
                            });

                            taskController.clear();
                          }
                        },
                        child: const Text(
                          'Add',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                    title: Text(_tasks[index]),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
