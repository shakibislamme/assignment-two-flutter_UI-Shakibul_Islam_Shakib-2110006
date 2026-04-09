import 'package:flutter/material.dart';
import 'main_screen.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildBoxHeader(),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "My Cards",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),

            // Virtual Card with Gradient (As per Image)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xFF232526), Color(0xFF414345)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "BANK",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const Text(
                    "4567 •••• •••• 1234",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "CARD HOLDER",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "SHAKIBUL ISLAM SHAKIB",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "EXPIRES",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "12/28",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Linked Accounts Title Box
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                "Linked Accounts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),

            // Linked Account Box (Shared Savings)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.indigo.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.account_balance_wallet,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Shared Savings",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "\$5,500.00",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
