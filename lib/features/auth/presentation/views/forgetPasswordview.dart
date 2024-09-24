import 'package:flutter/material.dart';
import 'package:grocery/features/auth/presentation/widgets/forgetpasswordviewbody.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ForgetPasswordViewBody(),
      ),
    );
  }
}
