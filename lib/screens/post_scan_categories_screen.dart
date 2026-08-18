import 'package:flutter/material.dart';
import '../mock_data.dart';
import 'category_image_screen.dart';

class PostScanCategoriesScreen extends StatelessWidget {
  const PostScanCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),
      appBar: AppBar(
        title: const Text(
          'Select a Category',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header hint
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color(0xFF4CAF50),
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Card scanned! Choose a category to view.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF424242),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Categories grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.95,
                ),
                itemCount: mockCategories.length,
                itemBuilder: (context, index) {
                  final cat = mockCategories[index];
                  return _PostScanCategoryCard(
                    category: cat,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CategoryImageScreen(
                            categoryName: cat.name,
                            categoryIcon: cat.icon,
                            categoryColor: cat.color,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PostScanCategoryCard extends StatelessWidget {
  final CategoryData category;
  final VoidCallback onTap;

  const _PostScanCategoryCard({
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.06),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                color: category.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                category.icon,
                size: 34,
                color: const Color(0xFF424242),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
