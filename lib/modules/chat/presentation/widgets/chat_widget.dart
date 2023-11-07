import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatWidget extends StatelessWidget {
  final String email;
  final String photoUrl;
  final String firstName;
  final String secondName;
  final String role;
  final bool chatIsSelected;

  const ChatWidget({
    super.key,
    required this.email,
    required this.photoUrl,
    required this.firstName,
    required this.secondName,
    required this.role,
    this.chatIsSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: chatIsSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: chatIsSelected
              ? [
                  BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.07),
                      offset: const Offset(0, 10),
                      blurRadius: 40,
                      spreadRadius: 0)
                ]
              : []),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            photoUrl,
            width: 65,
            height: 65,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                email,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
              Text(
                '$firstName $secondName | $role',
                style: const TextStyle(
                    color: Color(0xff7B6F72),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/button.svg',
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
