import 'package:flutter/material.dart';
import 'package:home_service_app/Screen/Location.dart';
import 'package:home_service_app/Screen/button.dart';
import 'package:home_service_app/Screen/login.dart';
import 'package:home_service_app/Screen/otp.dart';
import 'package:home_service_app/contraints.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? dropdownValue;

  final List<String> _listCountry = ['(USA) +1', '(INDIA) +91'];
  final List<String> _listIcon = [
    'assets/images/usa_icon.png',
    'assets/images/india_icon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Frame.png'),
            ),
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Your Home Service Expert',
                style: CustomTextStyle(Colors.black, 28, FontWeight.w600)
                    .cTextStyle(),
              ),
              const SizedBox(height: 20),
              Text(
                'Continue with Phone Number',
                style: CustomTextStyle(Colors.grey, 18, FontWeight.w600)
                    .cTextStyle(),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Mobile Number',
                    prefix: customDropDownList(),
                    // prefixIcon: customDropDownList(),
                  ),
                ),
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
                child: const CustomButton(txt: 'sign up'),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPScreen(),
                    ),
                  );
                },
                child: Text(
                  'view other option'.toUpperCase(),
                  style: CustomTextStyle(Colors.blueAccent, 16, FontWeight.w600)
                      .cTextStyle(),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account? '.toUpperCase(),
                    style: CustomTextStyle(Colors.grey, 16, FontWeight.w600)
                        .cTextStyle(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'log in'.toUpperCase(),
                      style: CustomTextStyle(Colors.blue, 16, FontWeight.w600)
                          .cTextStyle(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customDropDownList() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.5,
        child: DropdownButton(
            hint: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(_listIcon[0]),
                ),
                Text(_listCountry[0]),
              ],
            ),
            value: dropdownValue,
            iconSize: 18,
            underline: Container(
              color: Colors.white,
            ),
            icon: const Icon(Icons.arrow_downward_sharp),
            style: const TextStyle(
              color: Colors.grey,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: _listCountry.map<DropdownMenuItem<String>>((String value) {
              int t = 0;
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(_listIcon[t++]),
                    ),
                    Text(
                      value,
                    ),
                  ],
                ),
              );
            }).toList()),
      ),
    );
  }
}
