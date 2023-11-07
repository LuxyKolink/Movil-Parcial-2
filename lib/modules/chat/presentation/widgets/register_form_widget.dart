import 'package:flutter/material.dart';
import 'package:parcial2/modules/chat/presentation/widgets/circle_avatar_widget.dart';

import 'text_form_field_widget.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
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
        Column(
          children: [
            const CircleAvatarWidget(),
            TextButton(onPressed: () {}, child: const Text('Seleccionar'))
          ],
        ),
        TextFormFieldWidget(
          controller: _email,
          labelText: 'Nombre',
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
