import 'package:chat_app1/widgets/custom_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninSocialBtn extends StatelessWidget {
  const SigninSocialBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       Text('Or Sign in with',style: TextStyle(
        color: Colors.white,
        fontSize: 20
       ),),
        SizedBox(
          height: 12,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomLogo(logo: NetworkImage('assets/img/facebook.png')),
          SizedBox(
            width: 8,
          ),
          CustomLogo(logo: NetworkImage('assets/img/google.png')),
          SizedBox(
            width: 8,
          ),
          CustomLogo(logo: NetworkImage('assets/img/insta.jfif')),
          SizedBox(
            width: 8,
          ),
          CustomLogo(logo: NetworkImage('assets/img/X.png')),
        ])
      ],
    );
  }
}
