import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Browse'),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildCategoryCard(
            'Steps',
            Icons.directions_walk,
            AppTheme.stepsBackgroundColor,
            AppTheme.stepsAccentColor,
          ),
          _buildCategoryCard(
            'Sleep',
            Icons.bedtime,
            AppTheme.sleepBackgroundColor,
            AppTheme.sleepAccentColor,
          ),
          _buildCategoryCard(
            'Calories',
            Icons.local_fire_department,
            AppTheme.caloriesBackgroundColor,
            AppTheme.caloriesAccentColor,
          ),
          _buildCategoryCard(
            'Cycle',
            Icons.water_drop,
            AppTheme.cycleBackgroundColor,
            AppTheme.cycleAccentColor,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon, Color bgColor, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: iconColor),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
