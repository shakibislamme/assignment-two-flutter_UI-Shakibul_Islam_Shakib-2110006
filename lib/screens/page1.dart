import 'package:flutter/material.dart';
import 'main_screen.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildBoxHeader(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF5051F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.white70,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "\$8,945.32",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Savings: \$5,500",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Text(
                        "Last 30 days: +\$300 →",
                        style: TextStyle(color: Colors.white70, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Quick Actions Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _actionBtn(Icons.arrow_upward, "Transfer"),
                _actionBtn(Icons.payment, "Pay Bills"),
                _actionBtn(Icons.link, "Invest"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.indigo, fontSize: 12),
                  ),
                ],
              ),
            ),

            _transBox(
              "Netflix Subscription",
              "Entertainment • Today",
              "-\$19.99",
              Colors.red,
            ),
            _transBox(
              "Coffee Shop",
              "Food & Drink • Today",
              "-\$4.50",
              Colors.red,
            ),
            _transBox(
              "Salary Deposit",
              "Income • Yesterday",
              "+\$3500.00",
              Colors.green,
            ),
            _transBox(
              "Grocery Store",
              "Shopping • Yesterday",
              "-\$55.80",
              Colors.red,
            ),
            _transBox(
              "Amazon Purchase",
              "Shopping • 2 days ago",
              "-\$120.45",
              Colors.red,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _actionBtn(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.indigo, size: 22),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _transBox(String title, String sub, String price, Color pColor) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 20,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                sub,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          Text(
            price,
            style: TextStyle(color: pColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
