import 'package:flutter/material.dart';

class userLogin extends StatefulWidget {
  const userLogin({Key? key}) : super(key: key);

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('User Login'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/main_logo.jpeg'),
                    radius: 80,
                  ),
                ),
                SizedBox(height: 30.0),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[350],
                            filled: true,
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[350],
                            filled: true,
                            prefixIcon: Icon(Icons.key),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[350],
                            filled: true,
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[350],
                            filled: true,
                            prefixIcon: Icon(Icons.phone_android),
                            hintText: 'Phone Number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Register as User'),
                          style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.grey[700])
                        ),
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
