import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/utils/colors.utils.dart';
import '../../../skeleton/bloc/selected_page_provider.dart';
import 'text_form_field_widget.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _verifyPsw;
  late final TextEditingController _phoneNumber;
  late final TextEditingController _firstName;
  late final TextEditingController _secondName;
  late final TextEditingController _role;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _verifyPsw = TextEditingController();
    _phoneNumber = TextEditingController();
    _firstName = TextEditingController();
    _secondName = TextEditingController();
    _role = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _verifyPsw.dispose();
    _phoneNumber.dispose();
    _firstName.dispose();
    _secondName.dispose();
    _role.dispose();
    super.dispose();
  }

  // void signUp() async {
  //   if (_password.text != _verifyPsw.text) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('Password do not match.'),
  //       ),
  //     );
  //     return;
  //   }
  //   final authService = Provider.of<AuthService>(context, listen: false);

  //   try {
  //     await authService.signUp(
  //       _email.text,
  //       _password.text,
  //     );
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
    int selectedStep = Provider.of<SelectedProvider>(context).selectedStep;
    if (selectedStep == 1) {
      return Column(
        children: [
          TextFormFieldWidget(
            controller: _firstName,
            labelText: 'Nombre',
            iconPath: 'assets/icons/user-icon.svg',
          ),
          TextFormFieldWidget(
            controller: _secondName,
            labelText: 'Apellido',
            iconPath: 'assets/icons/user-icon.svg',
          ),
          TextFormFieldWidget(
            controller: _role,
            labelText: 'Rol',
            iconPath: 'assets/icons/user-icon.svg',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  loginState.changeStep(0);
                },
                child: const Text('1'),
              ),
              TextButton(
                onPressed: () {
                  loginState.changeStep(1);
                },
                child: const Text('2'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
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
                  'Registrarse',
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
        TextFormFieldWidget(
          controller: _verifyPsw,
          labelText: 'Verificar Contraseña',
          iconPath: 'assets/icons/lock-line-icon.svg',
        ),
        TextFormFieldWidget(
          controller: _phoneNumber,
          labelText: 'Número',
          iconPath: 'assets/icons/Phone.svg',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                loginState.changeStep(0);
              },
              child: const Text('1'),
            ),
            TextButton(
              onPressed: () {
                loginState.changeStep(1);
              },
              child: const Text('2'),
            ),
          ],
        ),
      ],
    );
  }
}
