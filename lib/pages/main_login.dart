import 'package:flutter/material.dart';

class loginAll extends StatefulWidget {
  const loginAll({Key? key}) : super(key: key);

  @override
  State<loginAll> createState() => _loginAllState();
}

class _loginAllState extends State<loginAll> {

  bool? isChecked=true;

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
                      child: Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              activeColor: Colors.grey[700],
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked=newBool;
                                });
                              },
                          ),
                          Text('I am user', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white54,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0,right: 35.0,top: 15.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Login'),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(Colors.grey[700])
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0,right: 35.0,top: 15.0),
                      child: Row(
                        children: [
                          Text("Don't have an account?", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white54,
                          ),
                          ),
                          TextButton(onPressed: () {},
                              child: Text('Sign Up',style: TextStyle(
                                fontSize: 18,
                                color: Colors.lightBlue
                              ))
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
