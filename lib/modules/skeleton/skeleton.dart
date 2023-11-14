import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../chat/presentation/pages/home_page.dart';
import '../chat/presentation/pages/login_page.dart';
import 'bloc/selected_page_provider.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedProvider>(context).selectedPage;

    if (selectedPage == 1) {
      return const HomePage();
    }

    return const LoginPage();
  }
}
