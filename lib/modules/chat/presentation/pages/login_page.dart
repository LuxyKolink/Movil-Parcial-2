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
      return const Center(
        child: LoginSectionWidget(isRegister: true),
      );
    }

    return const Center(
      child: LoginSectionWidget(),
    );
  }
}
