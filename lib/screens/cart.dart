import 'package:ethio_market_app/screens/checkout.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
//import 'checkout_screen.dart';

class Cart extends StatelessWidget {
  const Cart ({super.key});

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
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundColor: AppColors.primaryGreen,
              child: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Flex vertical distribution stack for line items display items list
            Expanded(
              child: ListView(
                children: [
                  _buildCartItem(
                    'Habesh Cloth',
                    'Traditional Dress',
                    '£250.00',
                    Icons.accessibility,
                  ),
                  _buildDismissibleCartItem(
                    'Coffee',
                    '1 Kg',
                    '£15.00',
                    Icons.coffee,
                  ),
                  _buildCartItem(
                    'Gold 21 ct',
                    '1g',
                    '£1000.00',
                    Icons.stars,
                  ),
                ],
              ),
            ),

            // Summary statement value breakdown logic container block UI template code elements
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total (3 item) :',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '£1275',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.combine([]),
                    ),
                  ),
                ],
              ),
            ),

            // Form operational link route validation triggers interface access block layout pipeline standard execution button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Checkout(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proceed to Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Standard persistent active cart row structure component
  Widget _buildCartItem(
    String name,
    String details,
    String price,
    IconData icon,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primaryGreen,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: Colors.amber,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  details,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    size: 14,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  '1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 14,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Swipeable dismissible row structure simulation (matches slide to view delete configuration)
  Widget _buildDismissibleCartItem(
    String name,
    String details,
    String price,
    IconData icon,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      icon,
                      color: Colors.brown,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        details,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 14,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 14,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: 50,
            alignment: Alignment.center,
            child: const Icon(
              Icons.delete,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}