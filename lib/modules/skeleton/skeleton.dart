import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/utils/colors.utils.dart';
import '../chat/presentation/pages/home_page.dart';
import '../chat/presentation/pages/login_page.dart';
import 'bloc/selected_page_provider.dart';
import 'widgets/appbar_widget.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedProvider>(context).selectedPage;

    if (selectedPage == 1) {
      return const Scaffold(
        appBar: AppBarWidget(),
        backgroundColor: AppColors.white,
        body: HomePage(),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff9DCEFF).withOpacity(0.3),
      body: const LoginPage(),
    );
  }
}
