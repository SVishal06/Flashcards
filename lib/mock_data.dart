import 'package:flutter/material.dart';

/// All hardcoded mock data for the prototype.

// ---------------------------------------------------------------------------
// Categories
// ---------------------------------------------------------------------------
class CategoryData {
  final String name;
  final IconData icon;
  final Color color;
  final bool available;

  const CategoryData({
    required this.name,
    required this.icon,
    required this.color,
    this.available = false,
  });
}

const List<CategoryData> mockCategories = [
  CategoryData(
    name: 'Animals',
    icon: Icons.pets,
    color: Color(0xFFE8F5E9),
    available: true,
  ),
  CategoryData(
    name: 'Food',
    icon: Icons.restaurant,
    color: Color(0xFFFFF3E0),
  ),
  CategoryData(
    name: 'Vehicles',
    icon: Icons.directions_car,
    color: Color(0xFFE3F2FD),
  ),
  CategoryData(
    name: 'Objects',
    icon: Icons.category,
    color: Color(0xFFFCE4EC),
  ),
  CategoryData(
    name: 'People',
    icon: Icons.people,
    color: Color(0xFFF3E5F5),
  ),
  CategoryData(
    name: 'Places',
    icon: Icons.place,
    color: Color(0xFFE0F7FA),
  ),
];

// ---------------------------------------------------------------------------
// Animal Cards
// ---------------------------------------------------------------------------
class AnimalCard {
  final String name;
  final Color color;
  final IconData icon;

  const AnimalCard({
    required this.name,
    required this.color,
    required this.icon,
  });
}

const List<AnimalCard> mockAnimalCards = [
  AnimalCard(name: 'Dog', color: Color(0xFFFFCC80), icon: Icons.pets),
  AnimalCard(name: 'Cat', color: Color(0xFFCE93D8), icon: Icons.pets),
  AnimalCard(name: 'Elephant', color: Color(0xFF90CAF9), icon: Icons.pets),
  AnimalCard(name: 'Horse', color: Color(0xFFA5D6A7), icon: Icons.pets),
  AnimalCard(name: 'Bird', color: Color(0xFFF48FB1), icon: Icons.flutter_dash),
  AnimalCard(name: 'Rabbit', color: Color(0xFFFFAB91), icon: Icons.pets),
];

// ---------------------------------------------------------------------------
// Card Detail — Concept rows
// ---------------------------------------------------------------------------
class ConceptRow {
  final String concept;
  final String value;
  final IconData icon;

  const ConceptRow({
    required this.concept,
    required this.value,
    required this.icon,
  });
}

const List<ConceptRow> dogConcepts = [
  ConceptRow(concept: 'Group', value: 'Mammals', icon: Icons.category),
  ConceptRow(concept: 'Use', value: 'Pet / Companion', icon: Icons.favorite),
  ConceptRow(concept: 'Action', value: 'Barks, Runs, Plays', icon: Icons.directions_run),
  ConceptRow(concept: 'Properties', value: 'Furry, Four Legs', icon: Icons.texture),
  ConceptRow(concept: 'Location', value: 'House / Yard', icon: Icons.home),
  ConceptRow(concept: 'Association', value: 'Loyal, Friendly', icon: Icons.handshake),
];

// ---------------------------------------------------------------------------
// Interactive learning explanations
// ---------------------------------------------------------------------------
const Map<String, String> conceptExplanations = {
  'Group':
      'Dog is a mammal. It is warm-blooded and has fur. Mammals feed their babies with milk and take care of their young ones.',
  'Use':
      'Dogs are commonly kept as pets and companions. They provide emotional support, security, and help in activities like herding, guiding, and therapy.',
  'Action':
      'Dogs bark to communicate, run with great speed, and love to play fetch, tug-of-war, and other games with their owners.',
  'Properties':
      'Dogs have fur that keeps them warm. They walk on four legs and have a strong sense of smell and hearing.',
  'Location':
      'Dogs usually live in houses with their families. They love spending time in the yard, parks, and open spaces.',
  'Association':
      'Dogs are known for being loyal and friendly. They form strong bonds with humans and are often called "man\'s best friend."',
};
