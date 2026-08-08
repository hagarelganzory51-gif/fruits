import 'package:flutter/material.dart';
import 'package:fruits_app/core/function/navigation.dart' as navigator;
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/order_screen/screens/contant_us_screen.dart';
import 'package:fruits_app/feature/order_screen/widgets/tracking_step.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Order Tracking",
          style: TextStyles.style24.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const Text(
              'Your Order Code: #882610',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            const Text(
              '3 items - 37.50 KD\nPayment Method : Cash',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13, height: 1.4),
            ),
            const SizedBox(height: 24),

            Expanded(
              child: ListView(
                children: const [
                  TrackingStep(
                    title: 'Delivered',
                    subtitle: 'Estimated for 10 September, 2021',
                    isCompleted: false,
                    isFirst: true,
                  ),
                  TrackingStep(
                    title: 'Out for delivery',
                    subtitle: 'Estimated for 10 September, 2021',
                    isCompleted: false,
                  ),
                  TrackingStep(
                    title: 'Order shipped',
                    subtitle: 'Estimated for 10 September, 2021',
                    isCompleted: false,
                  ),
                  TrackingStep(
                    title: 'Confirmed',
                    subtitle: 'Your order has been confirmed',
                    isCompleted: true,
                  ),
                  TrackingStep(
                    title: 'Order Placed',
                    subtitle: 'We have received your order',
                    isCompleted: true,
                    isLast: true,
                  ),
                ],
              ),
            ),


            ElevatedButton(
              onPressed: () {
                navigator.pushTo(context, const ContactUsScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              child: const Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4D4D),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              child: const Text('Cancel Order', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
