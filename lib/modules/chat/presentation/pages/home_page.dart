import 'package:flutter/material.dart';
import '../widgets/chat_section_widget.dart';
import '../widgets/contacts_section_widget.dart';
import '../widgets/searchfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SearchFieldWidget(),
        SizedBox(
          height: 40,
        ),
        ContactsListWidget(),
        SizedBox(
          height: 40,
        ),
        ChatSectionWidget(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
