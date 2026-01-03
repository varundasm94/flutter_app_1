class CaloriesData {
  final DateTime date;
  final int calories;

  const CaloriesData({
    required this.date,
    required this.calories,
  });

  String get formattedCalories => '$calories kcal';
}
