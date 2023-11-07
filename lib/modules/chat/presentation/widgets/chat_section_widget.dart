import 'package:flutter/material.dart';

import '../../data/models/user_model.dart';
import 'chat_widget.dart';

List<UserModel> users = [];

class ChatSectionWidget extends StatefulWidget {
  const ChatSectionWidget({super.key});

  @override
  State<ChatSectionWidget> createState() => _ChatSectionWidgetState();
}

class _ChatSectionWidgetState extends State<ChatSectionWidget> {
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
            'Chats',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
          itemCount: users.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(
            height: 25,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: (context, index) {
            return ChatWidget(
              email: users[index].email,
              photoUrl: users[index].photoUrl,
              firstName: users[index].firstName,
              secondName: users[index].secondName,
              role: users[index].role,
            );
          },
        )
      ],
    );
  }
}
