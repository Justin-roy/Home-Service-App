import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required double iconSize,
  })  : _iconSize = iconSize,
        super(key: key);

  final double _iconSize;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.transparent,
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.home,
                    size: _iconSize,
                    color: const Color(0xff5663ff),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.card_giftcard_outlined,
                    size: _iconSize,
                    color: const Color(0xff6e7faa),
                  ),
                  const Text(
                    'Rewards',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.list_alt_outlined,
                    size: _iconSize,
                    color: const Color(0xff6e7faa),
                  ),
                  const Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.calendar_view_month_outlined,
                    size: _iconSize,
                    color: const Color(0xff6e7faa),
                  ),
                  const Text(
                    'Bookings',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.person_outlined,
                    size: _iconSize,
                    color: const Color(0xff6e7faa),
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
