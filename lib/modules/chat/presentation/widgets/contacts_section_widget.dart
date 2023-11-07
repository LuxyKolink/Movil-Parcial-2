import 'package:flutter/material.dart';
import 'contact_widget.dart';

import '../../data/models/user_model.dart';

List<UserModel> users = [];

class ContactsListWidget extends StatefulWidget {
  const ContactsListWidget({super.key});

  @override
  State<ContactsListWidget> createState() => _ContactsListWidgetState();
}

class _ContactsListWidgetState extends State<ContactsListWidget> {
  @override
  void initState() {
    users = UserModel.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Contactos',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            itemCount: users.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
            ),
            itemBuilder: (context, index) {
              return ContactWidget(
                firstName: users[index].firstName,
                secondName: users[index].secondName,
                photoUrl: users[index].photoUrl,
              );
            },
          ),
        )
      ],
    );
  }
}
