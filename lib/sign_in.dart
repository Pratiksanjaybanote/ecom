import 'package:ecom/OTP_page.dart';
import 'package:ecom/sign_up.dart';
import 'package:flutter/material.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign in')),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Enter your mobile number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTP()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
              ),
              child: Text('Send OTP')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (Sign_up())),
                    );
                  },
                  child: Text('Register Now')),
            ],
          ),
        ],
      ),
    );
  }
}
