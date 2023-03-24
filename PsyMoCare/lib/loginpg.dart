import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepg.dart';

class loginpg extends StatefulWidget {
  final VoidCallback showRegpg;
  const loginpg({Key? key, required this.showRegpg}) : super(key: key);

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
    );
  }
  @override

  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(height: 40,),
                    Image.asset('lib/icons/psypsy.png', scale: 3,),
                    //greet
                    Text(
                      'Hello Again!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),

                    SizedBox(height: 5),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 35),
                    //email
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: TextField(
                                  controller: _emailController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                    ))))),

                    SizedBox(height: 10),
                    //password
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: TextField(
                                  controller: _passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                    ))))),

                    SizedBox(height: 10),
                    //signin
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: signin,
                        child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xFF29558B),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(

                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    //color: Color(0xFF29558B),

                            )),
                      ),
                    ),
                    SizedBox(height: 25),
                    //register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.showRegpg,
                          child: Text('Register now',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
