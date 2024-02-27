import 'package:ecom/sign_in.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Column(
        children: [
          Text(
            'Hello! Register to get started',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Mobile number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
              ),
              child: Text('Send OTP')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sign_in()),
                    );
                  },
                  child: Text('Login Now')),
            ],
          ),
        ],
      ),
    );
  }
}
