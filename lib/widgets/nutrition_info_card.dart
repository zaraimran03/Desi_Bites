import 'package:flutter/material.dart';

class NutritionInfoCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const NutritionInfoCard({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F8F4),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFD8F3DC),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF2D6A4F).withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: const Color(0xFF2D6A4F),
              size: 24,
            ),
          ),
          
          const SizedBox(height: 12),
          
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B4332),
            ),
          ),
          
          const SizedBox(height: 4),
          
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xFF52B788).withOpacity(0.8),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}