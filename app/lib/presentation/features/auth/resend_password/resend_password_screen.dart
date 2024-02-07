import 'package:app/presentation/features/auth/resend_password/widgets/resend_password_body.dart';
import 'package:app/presentation/features/auth/resend_password/widgets/resend_password_header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResendPasswordScreen extends StatelessWidget {
  const ResendPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResendPasswordHeader(),
            ResendPasswordBody(),
          ],
        ),
      ),
    );
  }
}
