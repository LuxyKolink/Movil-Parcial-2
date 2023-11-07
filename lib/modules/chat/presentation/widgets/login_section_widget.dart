import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcial2/modules/chat/presentation/widgets/login_form_widget.dart';
import 'package:parcial2/modules/chat/presentation/widgets/register_form_widget.dart';
import 'package:provider/provider.dart';
import '../../../../common/utils/colors.utils.dart';
import '../../../skeleton/bloc/selected_page_provider.dart';

class LoginSectionWidget extends StatelessWidget {
  final bool isRegister;

  const LoginSectionWidget({
    super.key,
    this.isRegister = false,
  });

  @override
  Widget build(BuildContext context) {
    var loginState = context.watch<SelectedProvider>();
    // int selectedOption = Provider.of<SelectedProvider>(context).selectedOption;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: isRegister ? 600 : 500,
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/icons/App.svg'),
                  Text(
                    isRegister ? 'Register' : 'Login',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          loginState.changeOption(0);
                        },
                        child: const Text('Login'),
                      ),
                      TextButton(
                        onPressed: () {
                          loginState.changeOption(1);
                        },
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                  isRegister
                      ? const RegisterFormWidget()
                      : const LoginFormWidget(),
                  Container(
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
                  )
                ],
              ),
            ))
      ],
    );
  }
}
