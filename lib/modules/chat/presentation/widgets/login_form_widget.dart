import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
