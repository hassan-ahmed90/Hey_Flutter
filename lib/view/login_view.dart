import 'package:flutter/material.dart';
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Login",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("SIGN IN",style: TextStyle(color: Colors.teal,fontSize: 35),)),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(

              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.teal
              ),
              child: Center(child: Text("LOG IN",style: TextStyle(color: Colors.white),)),
            ),

          ],
        ),
      ),
    );
  }
}
