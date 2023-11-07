import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final String firstName;
  final String secondName;
  final String photoUrl;

  const ContactWidget({
    super.key,
    required this.firstName,
    required this.secondName,
    required this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(photoUrl),
            ),
          ),
          Text(
            '$firstName\n$secondName',
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14),
          )
        ],
      ),
    );
  }
}
