import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('More'),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body: ListView(
        children: [
          _buildMenuItem(Icons.settings, 'Settings'),
          _buildMenuItem(Icons.notifications, 'Notifications'),
          _buildMenuItem(Icons.privacy_tip, 'Privacy'),
          _buildMenuItem(Icons.help, 'Help & Support'),
          _buildMenuItem(Icons.info, 'About'),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primaryColor),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right, color: AppTheme.textSecondaryColor),
      onTap: () {},
    );
  }
}
