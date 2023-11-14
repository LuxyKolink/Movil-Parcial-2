import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/utils/colors.utils.dart';
import '../../../skeleton/bloc/selected_page_provider.dart';
import '../../../skeleton/widgets/appbar_widget.dart';
import '../widgets/chat_section_widget.dart';
import '../widgets/contacts_section_widget.dart';
import '../widgets/searchfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var loginState = context.watch<SelectedProvider>();
    return Scaffold(
      appBar: AppBarWidget(
        onTap: () {
          loginState.changePage(0);
        },
      ),
      backgroundColor: AppColors.white,
      body: ListView(
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
      ),
    );
  }
}
