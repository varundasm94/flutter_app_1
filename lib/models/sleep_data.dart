class SleepData {
  final DateTime date;
  final Duration duration;

  const SleepData({
    required this.date,
    required this.duration,
  });

  String get formattedDuration {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    return '${hours}hr ${minutes}min';
  }

  double get hours => duration.inMinutes / 60.0;
}
