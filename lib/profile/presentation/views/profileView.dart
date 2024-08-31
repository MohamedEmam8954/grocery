import 'package:flutter/material.dart';
import 'package:grocery/profile/presentation/widgets/ProfileViewBody.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: ProfileViewBody());
  }
}