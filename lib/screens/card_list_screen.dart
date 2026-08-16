import 'package:flutter/material.dart';
import '../mock_data.dart';
import 'card_detail_screen.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),
      appBar: AppBar(
        title: const Text(
          'Animals',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            childAspectRatio: 0.80,
          ),
          itemCount: mockAnimalCards.length,
          itemBuilder: (context, index) {
            final card = mockAnimalCards[index];
            return _AnimalTile(
              card: card,
              onTap: () {
                if (card.name == 'Dog') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CardDetailScreen(
                        cardName: card.name,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${card.name} detail — Coming Soon!'),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color(0xFF424242),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class _AnimalTile extends StatelessWidget {
  final AnimalCard card;
  final VoidCallback onTap;

  const _AnimalTile({required this.card, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.06),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: card.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                card.icon,
                size: 32,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              card.name,
              style: const TextStyle(
                fontSize: 14,
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
