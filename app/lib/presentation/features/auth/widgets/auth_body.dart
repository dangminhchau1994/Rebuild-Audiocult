import 'package:app/presentation/features/auth/register/register_screen.dart';
import 'package:app/presentation/features/auth/signin/sigin_screen.dart';
import 'package:flutter/material.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: const [
          RegisterScreen(),
          SignInScreen(),
        ],
      ),
    );
  }
}
