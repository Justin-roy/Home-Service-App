import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_service_app/Screen/Home%20Page/Home_Page.dart';

import '../contraints.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hey Nice To Meet You!',
            style: CustomTextStyle(Colors.grey, 22, FontWeight.normal)
                .cTextStyle(),
          ),
          Text(
            'See Services Around',
            style:
                CustomTextStyle(Colors.black, 35, FontWeight.w600).cTextStyle(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/location_1.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 35,
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Your Current Location',
                      style:
                          CustomTextStyle(Colors.white, 18, FontWeight.normal)
                              .cTextStyle(),
                    ),
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
                    FontAwesomeIcons.search,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Some Other Location',
                    style: CustomTextStyle(Colors.grey, 18, FontWeight.normal)
                        .cTextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
