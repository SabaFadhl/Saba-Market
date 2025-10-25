import 'package:flutter/material.dart';
import 'package:saba_market/core/viewmodel/AuthVM.dart';

import '../components/app_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Text(
                "Welcome Back 👋",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(child: Text("Login to your account")),
            SizedBox(height: 50),
            AppTextformfield(label: 'Email',controller:emailControler),
            SizedBox(height: 10),
            AppTextformfield(
              controller: passwordControler,
              label: 'Password',
              isPassword: true,
              icon: Icon(Icons.visibility_off),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {

                  AuthVM auth = AuthVM();
                  dynamic response =await  auth.login(email: emailControler.text, password: passwordControler.text);
                  print("*****************"+response);
                  if (response is String){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response)));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
