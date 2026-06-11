import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Upper view frame simulating the main image viewport asset
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 380,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(
                    Icons.accessibility,
                    size: 120,
                    color: Colors.grey,
                  ),
                ),
              ),

              // Meta attributes detail block content
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Habesh cloth',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Item increment / decrement step capsule counter
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 16,
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
                                  color: Colors.black,
                                  size: 16,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // Reviews representation row template line
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '(920 Review)',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        const Text(
                          'Available in stock',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Item size selection horizontal array sequence buttons
                    Row(
                      children: ['S', 'M', 'L', 'XL', 'XXL']
                          .map((size) {
                        bool isSelected = size == 'L';

                        return Container(
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryGreen
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          child: Text(
                            size,
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      'The Habesha kemis is a traditional Ethiopian dress made from soft cotton fabric...',
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Pricing metrics summary alongside final checkout validation execution action
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total Price',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const Text(
                              '£250.00',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryGreen,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 44,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Layered circular buttons positioning layout over image layout layer view
          Positioned(
            top: 40,
            left: 16,
            child: CircleAvatar(
              backgroundColor: AppColors.primaryGreen,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          Positioned(
            top: 40,
            right: 16,
            child: CircleAvatar(
              backgroundColor: AppColors.primaryGreen,
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}