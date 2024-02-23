import 'package:app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class HomeAnnouncement extends StatelessWidget {
  const HomeAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
            colors: [
              ColorName.orange,
              ColorName.deepOrange,
            ],
          ),
        ),
      ),
    );
  }
}
