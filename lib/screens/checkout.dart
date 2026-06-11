import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: AppColors.primaryGreen,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
            color: AppColors.primaryGreen,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order Summary',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // Complete bill invoice layout calculation list display frame box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  _SummaryRow(
                    label: 'Habesh Cloth Traditional Dress',
                    value: '£250.00',
                  ),
                  _SummaryRow(
                    label: 'Coffee  1 kg',
                    value: '£15.00',
                  ),
                  _SummaryRow(
                    label: 'Gold  21 ct  1 g',
                    value: '£1000.00',
                  ),
                  Divider(
                    color: Colors.white54,
                    thickness: 1,
                  ),
                  _SummaryRow(
                    label: 'Total',
                    value: '£1275',
                    isTotal: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Shipping Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // User input capture block fields package container component
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildInputField('Full Name'),
                  const SizedBox(height: 12),
                  _buildInputField('Address'),
                  const SizedBox(height: 12),
                  _buildInputField('Phone Number'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // Method selection logic container grouping box layout module
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildRadioPaymentOption(
                    'Card Payment',
                    true,
                  ),
                  const SizedBox(height: 12),
                  _buildRadioPaymentOption(
                    'Cash on Delivery',
                    false,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Complete submission trigger button widget layout pipeline block
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Confirm Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Component structure processing custom text container configurations internally
  Widget _buildInputField(String hint) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white70,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  // Component styling handling selector loops across choice inputs variants
  Widget _buildRadioPaymentOption(
    String label,
    bool isSelected,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Icon(
            isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_off,
            color: isSelected
                ? Colors.black
                : Colors.white,
          ),
          const SizedBox(width: 12),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// Sub-component Helper widget for Invoice Rows
class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _SummaryRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}