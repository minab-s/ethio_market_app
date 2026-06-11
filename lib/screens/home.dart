import 'package:ethio_market_app/screens/cart.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'product_detail_screen.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top custom App Bar mimicking the design structure
      appBar: AppBar(
        backgroundColor: AppColors.primaryGreen,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black, size: 32),
          onPressed: () {},
        ),
        title: const Text(
          'Ethio Market',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome,',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Our Ethiopian Market App',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // Search Input Field Box
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Ethiopian Product',
                filled: true,
                fillColor: AppColors.inputBackground,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Category Section Title Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {},
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Horizontal list items for categories
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryItem('coffee', Icons.coffee),
                  _buildCategoryItem('Grains', Icons.grain),
                  _buildCategoryItem('Spices', Icons.dinner_dining),
                  _buildCategoryItem(
                    'Other',
                    Icons.more_horiz,
                    isPlaceholder: true,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // New Arrivals Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Grid showing the items items side by side
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 0.68,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildProductCard(
                  context,
                  'Full set Gold',
                  '21 ct',
                  '200000 ETB = 1000£',
                  Icons.stars,
                ),
                _buildProductCard(
                  context,
                  'Traditional cloth',
                  'free size',
                  '50000 ETB = 250£',
                  Icons.accessibility,
                  navigateToDetail: true,
                ),
              ],
            ),
          ],
        ),
      ),

      // Bottom persistent navigation bar panel
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: AppColors.primaryGreen,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Cart(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  // Component builder for individual category bubbles
  Widget _buildCategoryItem(
    String title,
    IconData icon, {
    bool isPlaceholder = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: isPlaceholder
                  ? const Color(0xFFE2EFE0)
                  : Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 36,
              color: AppColors.primaryGreen,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  // Component builder for standard feed grid cards
  Widget _buildProductCard(
    BuildContext context,
    String name,
    String subtitle,
    String price,
    IconData icon, {
    bool navigateToDetail = false,
  }) {
    return GestureDetector(
      onTap: () {
        if (navigateToDetail) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ProductDetailScreen(),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 60,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
                minimumSize: const Size(110, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Add to cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}