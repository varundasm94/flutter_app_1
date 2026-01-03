import 'package:flutter_application_1/models/sleep_data.dart';
import 'package:flutter_application_1/models/steps_data.dart';
import 'package:flutter_application_1/models/calories_data.dart';
import 'package:flutter_application_1/models/cycle_data.dart';

class SampleData {
  static final List<SleepData> sleepData = [
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 6)),
      duration: const Duration(hours: 6, minutes: 45),
    ),
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 5)),
      duration: const Duration(hours: 7, minutes: 30),
    ),
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 4)),
      duration: const Duration(hours: 6, minutes: 15),
    ),
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 3)),
      duration: const Duration(hours: 8, minutes: 0),
    ),
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 2)),
      duration: const Duration(hours: 7, minutes: 45),
    ),
    SleepData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 1)),
      duration: const Duration(hours: 7, minutes: 30),
    ),
    SleepData(
      date: DateTime(2026, 1, 2),
      duration: const Duration(hours: 5, minutes: 30),
    ),
  ];

  static final List<StepsData> stepsData = [
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 6)),
      steps: 7543,
    ),
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 5)),
      steps: 9821,
    ),
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 4)),
      steps: 6234,
    ),
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 3)),
      steps: 11567,
    ),
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 2)),
      steps: 8945,
    ),
    StepsData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 1)),
      steps: 10234,
    ),
    StepsData(
      date: DateTime(2026, 1, 2),
      steps: 8089,
    ),
  ];

  static final List<CaloriesData> caloriesData = [
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 6)),
      calories: 523,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 5)),
      calories: 687,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 4)),
      calories: 445,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 3)),
      calories: 756,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 2)),
      calories: 612,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2).subtract(const Duration(days: 1)),
      calories: 698,
    ),
    CaloriesData(
      date: DateTime(2026, 1, 2),
      calories: 567,
    ),
  ];

  static final List<CycleData> cycleData = [
    CycleData(
      date: DateTime(2026, 1, 1),
      phase: 'Follicular',
    ),
    CycleData(
      date: DateTime(2025, 12, 15),
      phase: 'Menstrual',
    ),
  ];

  static const String userName = 'Helen';
  static const String userGreeting = 'Good Afternoon';
}
