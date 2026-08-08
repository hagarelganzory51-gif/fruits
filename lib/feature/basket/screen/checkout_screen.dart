import 'package:flutter/material.dart';
import 'package:fruits_app/core/function/navigation.dart' as navigator;
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/feature/basket/screen/order_success_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int currentStep = 1; 
  int selectedPaymentMethod = 1; 

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
          onPressed: () {
            if (currentStep > 1) {
              setState(() => currentStep--);
            } else {
              Navigator.pop(context);
            }
          },
        ),
        title: Text(
          "Checkout",
          style: TextStyles.style24.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStepItem('Delivery Time', isCompleted: true),
                _buildLine(),
                _buildStepItem('Delivery Address', isCompleted: currentStep >= 1),
                _buildLine(),
                _buildStepItem('Payment', isCompleted: currentStep == 2),
              ],
            ),
            const SizedBox(height: 24),

            if (currentStep == 1) _buildAddressStep(),
            if (currentStep == 2) _buildPaymentStep(),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            if (currentStep == 1) {
              setState(() => currentStep = 2); 
            } else {
              navigator.pushReplacement(context, const OrderSuccessScreen());
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            currentStep == 1 ? 'Continue' : 'Place Order',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddressStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Select Delivery Address', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, size: 14, color: Colors.grey),
              label: const Text('Add New Address', style: TextStyle(color: Colors.grey, fontSize: 11)),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, color: AppColors.primaryColor, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Address 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                    SizedBox(height: 4),
                    Text(
                      'John Doe\n+000-11-1234567\nRoom #1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates',
                      style: TextStyle(color: Colors.grey, fontSize: 11, height: 1.3),
                    ),
                  ],
                ),
              ),
              Icon(Icons.check_circle, color: AppColors.primaryColor, size: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Coupon Code
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Do You Have any Coupon Code?',
                    hintStyle: const TextStyle(fontSize: 11, color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Apply', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            )
          ],
        ),
        const SizedBox(height: 16),

        // Order Details
        const Text('Order Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        const SizedBox(height: 8),
        _summaryRow('Total Items', '4 Items in cart'),
        _summaryRow('Subtotal', '36.00 KD'),
        _summaryRow('Shipping Charges', '1.50 KD'),
        const Divider(),
        _summaryRow('Bag Total', '37.50 KD', isBold: true),
        const SizedBox(height: 16),

        // Payment Options
        const Text('Payment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        const SizedBox(height: 8),
        _paymentTile(0, 'Credit Card/Debit card', Icons.credit_card),
        _paymentTile(1, 'Cash of Delivery', Icons.payments_outlined),
        _paymentTile(2, 'Knet', Icons.account_balance_wallet_outlined),
      ],
    );
  }

  Widget _paymentTile(int index, String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: RadioListTile<int>(
        value: index,
        groupValue: selectedPaymentMethod,
        activeColor: AppColors.primaryColor,
        onChanged: (val) => setState(() => selectedPaymentMethod = val!),
        title: Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        secondary: Icon(icon, color: Colors.grey, size: 20),
        dense: true,
      ),
    );
  }

  Widget _summaryRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
          Text(value, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.w500, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildStepItem(String title, {required bool isCompleted}) {
    return Column(
      children: [
        Container(
          width: 8, height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isCompleted ? AppColors.primaryColor : Colors.grey.shade300,
          ),
        ),
        const SizedBox(height: 4),
        Text(title, style: TextStyle(fontSize: 9, color: isCompleted ? Colors.black : Colors.grey)),
      ],
    );
  }

  Widget _buildLine() => Container(width: 15, height: 1, color: Colors.grey.shade300);
}