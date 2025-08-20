import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingredient Checker"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 32, vertical: 8),
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
              ElevatedButton(
                onPressed: (){
                  debugPrint("Login button pressed");
                },
                child: Text("Login"))
            ]
          ),
        )
      ),
    );
  }
}

