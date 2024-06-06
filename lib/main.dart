import 'dart:js';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tut/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Basic Form App'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: nameController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        icon: Icon(Icons.lock),
                        border: OutlineInputBorder())),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: getData,
                  child: const Text('Submit'),
                ),
              ],
            ),
          )),
    );
  }

  void getData() {
    print(nameController.text.toString());
    print(emailController.text.toString());
    print(passwordController.text.toString());
  }

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
