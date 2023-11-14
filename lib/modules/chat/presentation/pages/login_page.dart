import 'package:flutter/material.dart';
import '../widgets/login_section_widget.dart';
import 'package:provider/provider.dart';

import '../../../skeleton/bloc/selected_page_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedOption = Provider.of<SelectedProvider>(context).selectedOption;

    if (selectedOption == 1) {
      return Scaffold(
        backgroundColor: const Color(0xff9DCEFF).withOpacity(0.3),
        body: const Center(
          child: SingleChildScrollView(
            child: LoginSectionWidget(isRegister: true),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff9DCEFF).withOpacity(0.3),
      body: const Center(
        child: SingleChildScrollView(
          child: LoginSectionWidget(),
        ),
      ),
    );
  }
}
