import 'package:flutter/material.dart';
import 'package:home_service_app/Screen/Location.dart';
import 'package:home_service_app/Screen/button.dart';

import '../contraints.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_backspace_outlined,
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/password_1.png'),
            ),
          ),
          const Spacer(),
          Text(
            'OTP Verification',
            style:
                CustomTextStyle(Colors.black, 35, FontWeight.w600).cTextStyle(),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter the OTP sent to ',
                style: CustomTextStyle(Colors.grey, 18, FontWeight.normal)
                    .cTextStyle(),
              ),
              Text(
                '+91 8409969525',
                style: CustomTextStyle(Colors.black, 16, FontWeight.bold)
                    .cTextStyle(),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OTP not received? ',
                style: CustomTextStyle(Colors.grey, 15, FontWeight.w600)
                    .cTextStyle(),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const LogInScreen(),
                  //   ),
                  // );
                },
                child: Text(
                  'resend otp'.toUpperCase(),
                  style: CustomTextStyle(Colors.blue, 15, FontWeight.w600)
                      .cTextStyle(),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LocationScreen(),
                ),
              );
            },
            child: const CustomButton(txt: 'verified & proceed'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
