import 'package:ecom/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
      ),
      body: Column(
        children: [
          Center(
              child: Text('OTP Verification', style: TextStyle(fontSize: 40))),
          Text('Code has sent to +91 1234566578',
              style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 30,
          ),
          PinCodeTextField(
            defaultBorderColor: Colors.blue,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Text('Verify')),
          SizedBox(
            height: 20,
          ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Text(
                  'Didn’t received code?',
                ),
              ),
              Text(
                'Resend',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}
