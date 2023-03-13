import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
{
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset("images/Ciellie.png"),
              ),

              const SizedBox(height: 10,),
              Text(
                "Register as Ciellie Teammate",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: nameTextEditingController,
                style: const TextStyle(
                  color: Colors.lightBlue
                ),
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),


                ),
              ),
              TextField(
                controller: emailTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Colors.lightBlue
                ),
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),


                ),
              ),
              TextField(
                controller: phoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    color: Colors.lightBlue
                ),
                decoration: const InputDecoration(
                  labelText: "Phone",
                  hintText: "Phone",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),


                ),
              ),
              TextField(
                controller: passwordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(
                    color: Colors.lightBlue
                ),
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),


                ),
              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: ()
                {
                  //todo
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue
                ),
                child: Text(
                  "Create Account",
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
