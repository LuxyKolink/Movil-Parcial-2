import 'package:flutter/material.dart';
import 'package:parcial2/modules/skeleton/bloc/selected_page_provider.dart';
import 'package:provider/provider.dart';

import 'modules/skeleton/skeleton.dart';
import 'config/routes/routes.dart';
import 'config/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SelectedProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: getRoutes(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeleton();
  }
}
