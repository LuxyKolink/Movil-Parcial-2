import 'package:flutter/material.dart';
import 'package:parcial2/common/utils/colors.utils.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String profileImageUrl;
  const CircleAvatarWidget({
    super.key,
    this.profileImageUrl = 'assets/img/profile_icon.png',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
          backgroundColor: AppColors.white,
          //radius: 55,
          maxRadius: 35,
          backgroundImage: AssetImage(profileImageUrl)
          // ? NetworkImage(profileImageUrl!)
          // : const AssetImage('assets/icons/profile_icon.png'),
          ),
    );
  }
}
