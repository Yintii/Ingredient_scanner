import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget{
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child:TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child:TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child:TextField(
                controller: _passwordConfirmationController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                ),
              )
            ),
          ]
        ),
      )
    );
  }
}