// ignore: file_names
import 'package:flutter/material.dart';
import 'package:irukkaa/src/screen/DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _onSearcTwiterButtonPress() {
    print("search button clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Center(
            child: Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 130, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: <Widget>[
                    // SizedBox(
                    //   height: 100,
                    //   width: 100,
                    //   child: Center(
                    //       child: Image.asset('assets/images/irukkaaLogo.png')),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child:
                                Image.asset('assets/images/irukkaaLogo.png')),
                      ),
                    ),
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Irukkaa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.teal),
                      ),
                    )),
                    const SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.teal,
                            ),
                            focusedBorder: OutlineInputBorder(),
                            border: OutlineInputBorder(),
                            labelText: 'Mobile Number',
                            hintText: 'Enter valid mobile number',
                            hintStyle: TextStyle(
                              color: Colors.teal,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 65,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(color: Colors.teal, fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: SizedBox(
                        child: Text(
                          "or",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton.filledTonal(
                            icon: Image.asset(
                              'assets/images/google.png',
                              width: 35,
                              height: 35,
                            ),
                            onPressed: (() {
                              _onSearcTwiterButtonPress();
                            })),
                        const SizedBox(
                          width: 15,
                        ),
                        IconButton.filledTonal(
                            icon: Image.asset(
                              'assets/images/Facebook.png',
                              width: 35,
                              height: 35,
                            ),
                            onPressed: (() {
                              _onSearcTwiterButtonPress();
                            })),
                        const SizedBox(
                          width: 15,
                        ),
                        IconButton.filledTonal(
                            icon: Image.asset(
                              'assets/images/twitter.png',
                              width: 35,
                              height: 35,
                            ),
                            onPressed: (() {
                              _onSearcTwiterButtonPress();
                            })),
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 23, bottom: 25),
                            child: Text('Forgot your login details? '),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: InkWell(
                                onTap: () {
                                  print('hello');
                                },
                                child: const Text(
                                  'Get help logging in.',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
