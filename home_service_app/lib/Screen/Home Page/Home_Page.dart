import 'package:flutter/material.dart';
import 'package:home_service_app/Screen/Home%20Page/Custom_bottom.dart';

import '../../contraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _iconSize = 35;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              customLeading(),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Image(
                        image: AssetImage('assets/images/Home2.png'),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.width / 1.7,
                width: double.infinity,
                child: Column(
                  children: [
                    for (var i = 0; i < 2; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customContainer(),
                          customContainer(),
                          customContainer(),
                        ],
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Popular Services',
                    style: CustomTextStyle(Colors.black87, 25, FontWeight.w500)
                        .cTextStyle(),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 120,
                            height: 120,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/Rectangle_${index + 1}.png'),
                            ),
                          ),
                          Text(
                            'Kitchen',
                            style: CustomTextStyle(
                                    Colors.grey, 22, FontWeight.w500)
                                .cTextStyle(),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(iconSize: _iconSize),
    );
  }

  Widget customContainer() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            height: 60,
            width: 60,
            image: AssetImage('assets/images/Renovation.png'),
          ),
          Text(
            'Home',
            style:
                CustomTextStyle(Colors.black, 15, FontWeight.w600).cTextStyle(),
          ),
        ],
      ),
    );
  }

  Widget customLeading() {
    return Column(
      children: [
        Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 28,
            ),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.black,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 39,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Inner Circle, Connaught Place, New Delhi',
            ),
          ),
        )
      ],
    );
  }
}
