class StepsData {
  final DateTime date;
  final int steps;

  const StepsData({
    required this.date,
    required this.steps,
  });

  String get formattedSteps => steps.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match m) => '${m[1]},',
      );
}
