import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/utils/colors.utils.dart';
import '../../../skeleton/bloc/selected_page_provider.dart';
import 'text_form_field_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  // void signIn() async {
  //   final authService = Provider.of<AuthService>(context, listen: false);
  //   try {
  //     await authService.signIn(_email.text, _password.text);
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(e.toString()),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var loginState = context.watch<SelectedProvider>();
    return Column(
      children: [
        TextFormFieldWidget(
          controller: _email,
          labelText: 'Correo',
          iconPath: 'assets/icons/Email.svg',
        ),
        TextFormFieldWidget(
          controller: _password,
          labelText: 'Contraseña',
          iconPath: 'assets/icons/lock-line-icon.svg',
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            loginState.changePage(1);
          },
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0),
              backgroundColor:
                  MaterialStatePropertyAll<Color>(AppColors.white)),
          child: Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
                borderRadius: BorderRadius.circular(50)),
            child: const Center(
              child: Text(
                'View',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
        )
      ],
    );
  }
}
