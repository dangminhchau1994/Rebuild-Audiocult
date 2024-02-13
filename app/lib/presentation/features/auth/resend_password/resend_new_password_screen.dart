import 'package:app/presentation/features/auth/resend_password/widgets/resend_new_password_body.dart';
import 'package:app/presentation/features/auth/resend_password/widgets/resend_password_header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResendNewPasswordScreen extends StatelessWidget {
  const ResendNewPasswordScreen({super.key, @pathParam this.code});

  final String? code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ResendPasswordHeader(),
            ResendNewPasswordBody(code: code),
          ],
        ),
      ),
    );
  }
}
