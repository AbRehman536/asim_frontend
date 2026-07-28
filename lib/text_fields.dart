import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.1),
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Welcome Back",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
            SizedBox(height: 10,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Email"),
                hint: Text("abdullah@gmail.com"),
                prefix: Icon(Icons.email),
                suffixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: isPassword,
              controller: passwordController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                label: Text("Password"),
                hint: Text("*********"),
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(isPassword ? Icons.visibility : Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
              ),
              ),
            onTap: (){
                setState(() {
                  isPassword = !isPassword;
                });
            },
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){}, child: Text("Forget Password ?",
              style: TextStyle(
                color: Colors.red
              ),)),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 46,
              child: ElevatedButton(
                  onPressed: (){
                    if(emailController.text.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Email is Required")));
                      return;
                    }
                    if(passwordController.text.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Password is Required")));
                      return;
                    }
                    if(passwordController.text.length < 8){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                      return;
                    }
                    else{
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Login Successfully")));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ), child: Text("Login")),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account ?",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),),
                TextButton(onPressed: (){}, child: Text("SignUp",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w900
                ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
