import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_service_app/Screen/Location.dart';
import 'package:home_service_app/Screen/button.dart';
import 'package:home_service_app/Screen/sign_up.dart';

import '../contraints.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //  Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_backspace_outlined,
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Welcome back!'.toUpperCase(),
            style:
                CustomTextStyle(Colors.black, 36, FontWeight.bold).cTextStyle(),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 35,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'continue with facebook'.toUpperCase(),
                    style: CustomTextStyle(Colors.white, 18, FontWeight.normal)
                        .cTextStyle(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.google,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'continue with google'.toUpperCase(),
                    style: CustomTextStyle(Colors.grey, 18, FontWeight.normal)
                        .cTextStyle(),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'or continue with phone number'.toUpperCase(),
            style:
                CustomTextStyle(Colors.grey, 16, FontWeight.w600).cTextStyle(),
          ),
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
            child: const CustomButton(txt: 'log in'),
          ),
          Text(
            'Forget Password?',
            style:
                CustomTextStyle(Colors.black, 16, FontWeight.bold).cTextStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'dont\'t have an account? '.toUpperCase(),
                style: CustomTextStyle(Colors.grey, 16, FontWeight.w600)
                    .cTextStyle(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Text(
                  'sign up'.toUpperCase(),
                  style: CustomTextStyle(Colors.blue, 16, FontWeight.w600)
                      .cTextStyle(),
                ),
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
