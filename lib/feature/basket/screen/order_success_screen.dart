import 'package:flutter/material.dart';
import 'package:fruits_app/core/function/navigation.dart' as navigator;
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/feature/main_app/main_app_screen.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(),

            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 40),
            ),
            const SizedBox(height: 20),

            const Text(
              'YOUR ORDER IS CONFIRMED!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your order code: #243188\nThank you for choosing our products!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.4),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {
                navigator.pushReplacement(context, const MainAPPScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              ),
              child: const Text('Continue Shopping', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),

            OutlinedButton(
              onPressed: () {
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              ),
              child: const Text('Track Order', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}