// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formState = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      maxRadius: 70,
                      // child: Image.asset('lib/images/avatar.png', fit: BoxFit.cover),
                      // backgroundImage: NetworkImage(''),
                      backgroundImage: AssetImage('lib/images/avatar.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        )
                      ),
                    ),
                    Form(
                      key: _formState,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Email",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Enter your address email',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Password",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                child: TextFormField(
                                  obscureText: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Enter your password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
