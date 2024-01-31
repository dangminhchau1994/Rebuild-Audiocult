import 'package:app/presentation/features/auth/widgets/auth_body.dart';
import 'package:app/presentation/features/auth/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AuthHeader(
            tabController: _tabController,
          ),
          AuthBody(
            tabController: _tabController,
          )
        ],
      ),
    );
  }
}
