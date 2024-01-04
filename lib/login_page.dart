import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = '';
  String password = '';
  bool rememberMe = false;
  bool obscureText = true; // for password visibility

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Center(
                  child: SizedBox(
                    height: 250,
                    child: Padding(                     
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text('T', 
                              style: TextStyle(
                                fontSize: 170, 
                                color: Color(0xFF4D0000),
                                fontFamily: 'MarckScript')),
                    ),
                  ),
                ),
                const Center(
                  child: Text('Sign In', 
                          style: TextStyle(
                            fontSize: 30, 
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4D0000),
                            )
                          ),
                ),

                // Input label and textfield for email
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 40, 0, 5),
                  child: Text('Email',
                          style: TextStyle(
                            fontSize: 14, 
                            )
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(158, 119, 119, 0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none
                      ),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFFB9B9B9)
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),

                // Input label and textfield for password
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                  child: Text('Password',
                          style: TextStyle(
                            fontSize: 14, 
                            )
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29),
                  child: TextField(
                    controller: passwordController,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(158, 119, 119, 0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none
                      ),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFFB9B9B9)
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                      suffixIcon: IconButton(
                        onPressed: () {
                          // toggle visibility of password
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: obscureText? const Icon(Icons.visibility_rounded): const Icon(Icons.visibility_off_rounded),
                        color: const Color(0xFF4D0000),
                      ),
                    ),
                  ),
                ),

                // For Remember me check box and forget password label
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Row(
                        children: [ 
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                            activeColor: const Color(0xFF4D0000),
                          ),
                          
                          const Text('Remember me',
                            style: TextStyle(
                              fontSize: 14, 
                            )
                          ),
                        ],
                      ),
                      ),
                    
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Text('Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 14, 
                                      )
                                    ),
                        ),
                      ),

                    ],
                  ),
                ),
                
                // Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          email = emailController.text;
                          password = passwordController.text;

                          print('Email: $email');
                          print('Password: $password');
                          print('Remember me: $rememberMe');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4D0000),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Sign In'),
                    ),
                  ),
                ),

                // Or divider
                const Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: 
                        Divider(  
                          color:  Color(0xFFA5AEB5),
                          thickness: 0.61,
                        ),
                      ),
                      Text('  Or  ',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFA0ACBB), 
                        )
                      ),
                      Expanded(child: 
                        Divider(  
                          color:  Color(0xFFA5AEB5),
                          thickness: 0.61,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration:  BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.07),
                              blurRadius: 6,
                              spreadRadius: 1,
                              offset: const Offset(0, 0),
                            ),
                          
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/google.png',  
                                              fit: BoxFit.contain,),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.07),
                              blurRadius: 6,
                              spreadRadius: 1,
                              offset: const Offset(0, 0),
                            ),
                          
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/facebook.png',  
                                                fit: BoxFit.contain,),
                        ),
                      ),
                    ],
                  )
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(
                        width: 10,
                        child: Spacer()),
                      Text('Sign Up',
                        style: TextStyle(
                          color: Color(0xFF4D0000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  
                )
            ]
          ),
        ),
      ),
    );
  }
}