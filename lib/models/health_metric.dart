class HealthMetric {
  final String id;
  final String title;
  final String value;
  final String timeIndicator;
  final List<double> chartData;

  const HealthMetric({
    required this.id,
    required this.title,
    required this.value,
    required this.timeIndicator,
    required this.chartData,
  });
}
