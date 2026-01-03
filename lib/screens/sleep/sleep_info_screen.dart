import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';
import 'package:flutter_application_1/widgets/info_card.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class SleepInfoScreen extends StatelessWidget {
  const SleepInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.go('/summary'),
        ),
        title: const Text('Sleep'),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
        actions: [
          TextButton(
            onPressed: () => context.push('/sleep'),
            child: const Text(
              'View data',
              style: TextStyle(
                color: AppTheme.primaryColor,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange.shade200,
                  Colors.orange.shade100,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Icon(
                Icons.hotel,
                size: 80,
                color: Colors.orange.shade700,
              ),
            ),
          ),

          InfoCard(
            title: 'Why sleep is so important',
            subtitle: 'Find out why the body needs sleep',
            gradient: LinearGradient(
              colors: [
                Colors.orange.shade100,
                Colors.orange.shade50,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            illustration: Icon(
              Icons.person,
              size: 60,
              color: Colors.orange.shade700,
            ),
          ),

          InfoCard(
            title: 'How to improve your night\'s sleep',
            subtitle: 'These tips may help with sleep problems',
            gradient: LinearGradient(
              colors: [
                Colors.indigo.shade900,
                Colors.indigo.shade700,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            illustration: const Icon(
              Icons.nightlight_round,
              size: 60,
              color: Colors.amber,
            ),
          ),

          InfoCard(
            title: 'Understanding sleep cycles',
            subtitle: 'Learn about REM and deep sleep stages',
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade400,
                Colors.blue.shade200,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            illustration: Icon(
              Icons.graphic_eq,
              size: 60,
              color: Colors.blue.shade800,
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
