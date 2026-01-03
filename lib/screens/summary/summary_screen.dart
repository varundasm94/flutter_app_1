import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';
import 'package:flutter_application_1/widgets/metric_card.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/data/sample_data.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppTheme.textSecondaryColor,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '${SampleData.userGreeting}, ${SampleData.userName}!',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Summary',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: [
                  MetricCard(
                    icon: Icons.directions_walk,
                    title: 'Steps',
                    value: SampleData.stepsData.last.formattedSteps,
                    backgroundColor: AppTheme.stepsBackgroundColor,
                    accentColor: AppTheme.stepsAccentColor,
                    timeIndicator: '13:54',
                    chartData: SampleData.stepsData
                        .map((e) => e.steps.toDouble())
                        .toList(),
                    onTap: () => context.push('/steps'),
                  ),
                  const SizedBox(height: 12),

                  MetricCard(
                    icon: Icons.bedtime,
                    title: 'Sleep',
                    value: SampleData.sleepData.last.formattedDuration,
                    backgroundColor: AppTheme.sleepBackgroundColor,
                    accentColor: AppTheme.sleepAccentColor,
                    timeIndicator: '7h ago',
                    chartData: SampleData.sleepData
                        .map((e) => e.hours)
                        .toList(),
                    onTap: () => context.push('/sleep'),
                  ),
                  const SizedBox(height: 12),

                  MetricCard(
                    icon: Icons.local_fire_department,
                    title: 'Calories',
                    value: SampleData.caloriesData.last.formattedCalories,
                    backgroundColor: AppTheme.caloriesBackgroundColor,
                    accentColor: AppTheme.caloriesAccentColor,
                    timeIndicator: '13:55',
                    chartData: SampleData.caloriesData
                        .map((e) => e.calories.toDouble())
                        .toList(),
                    onTap: () => context.push('/calories'),
                  ),
                  const SizedBox(height: 12),

                  MetricCard(
                    icon: Icons.water_drop,
                    title: 'Cycle',
                    value: 'Yesterday',
                    backgroundColor: AppTheme.cycleBackgroundColor,
                    accentColor: AppTheme.cycleAccentColor,
                    timeIndicator: '',
                    chartData: const [1, 1, 1, 1, 1, 1, 1],
                    onTap: () => context.push('/cycle'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
