import 'package:coffee_app/core/coffe_colors.dart';
import 'package:flutter/material.dart';

class CoffeBottomNavBar extends StatelessWidget {
  const CoffeBottomNavBar({super.key});

  final _homeIcon = "asset/icons/home.png";

  final _loveIcon = "asset/icons/heart.png";

  final _bagIcon = "asset/icons/bag.png";

  final _notificationIcoin = "asset/icons/alarm.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -8),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
        color: CoffeColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.scale(
            scale: 1.6,
            child: Image.asset(
              _homeIcon,
              scale: 1.6,
              fit: BoxFit.cover,
            ),
          ),
          Transform.scale(
            scale: 1.6,
            child: Image.asset(
              _loveIcon,
              fit: BoxFit.cover,
            ),
          ),
          Transform.scale(
            scale: 1.6,
            child: Image.asset(
              _bagIcon,
              fit: BoxFit.cover,
            ),
          ),
          Transform.scale(
            scale: 1.6,
            child: Image.asset(
              _notificationIcoin,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
