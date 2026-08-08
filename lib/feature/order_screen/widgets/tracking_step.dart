import 'package:flutter/material.dart';

class TrackingStep extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isFirst;
  final bool isLast;

  const TrackingStep({
    super.key,
    required this.title,
    required this.subtitle,
    this.isCompleted = false,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = Colors.green;
    final inactiveColor = Colors.grey.shade300;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (!isFirst) Container(width: 2, height: 20, color: isCompleted ? activeColor : inactiveColor),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? activeColor : Colors.white,
                border: Border.all(color: isCompleted ? activeColor : Colors.green, width: 2),
              ),
            ),
            if (!isLast) Container(width: 2, height: 35, color: isCompleted ? activeColor : inactiveColor),
          ],
        ),
        const SizedBox(width: 16),

        // النصوص
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: isCompleted ? Colors.black : Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}