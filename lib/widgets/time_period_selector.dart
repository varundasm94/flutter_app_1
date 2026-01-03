import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

enum TimePeriod { day, week, month, sixMonths, year }

class TimePeriodSelector extends StatelessWidget {
  final TimePeriod selectedPeriod;
  final Function(TimePeriod) onPeriodChanged;

  const TimePeriodSelector({
    super.key,
    required this.selectedPeriod,
    required this.onPeriodChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildPeriodButton(context, 'D', TimePeriod.day),
          _buildPeriodButton(context, 'W', TimePeriod.week),
          _buildPeriodButton(context, 'M', TimePeriod.month),
          _buildPeriodButton(context, '6M', TimePeriod.sixMonths),
          _buildPeriodButton(context, 'Y', TimePeriod.year),
        ],
      ),
    );
  }

  Widget _buildPeriodButton(BuildContext context, String label, TimePeriod period) {
    final isSelected = selectedPeriod == period;
    return GestureDetector(
      onTap: () => onPeriodChanged(period),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.primaryColor.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: isSelected ? AppTheme.primaryColor : AppTheme.textSecondaryColor,
          ),
        ),
      ),
    );
  }
}
