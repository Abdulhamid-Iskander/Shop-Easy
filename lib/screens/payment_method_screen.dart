import 'package:ecommerce_ui/screens/confirmation_screen.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Payment Methods",
          style: TextStyle(color: AppColors.textPrimary),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildPaymentCard(
              context,
              "Credit Card",
              Icons.credit_card,
              "•••• •••• •••• 4242",
              isSelected: true,
            ),
            _buildPaymentCard(
              context,
              "PayPal",
              Icons.payment,
              "abdulhamid@gmail.com",
            ),
            _buildPaymentCard(context, "Apple Pay", Icons.apple, "Default"),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  "Add New Payment Method",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentCard(
    BuildContext context,
    String title,
    IconData icon,
    String subtitle, {
    bool isSelected = false,
  }) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: AppColors.primary),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing:
            isSelected ? Icon(Icons.check_circle, color: Colors.green) : null,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConfirmationScreen()),
          );
        },
      ),
    );
  }
}
