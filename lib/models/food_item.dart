class FoodItem {
  final String id;
  final String name;
  final double price;
  final int calories;
  final int weight;
  final String image;
  final String category;
  final String description;
  final double proteins;
  final double carbs;
  final double fats;
  final int energy;

  FoodItem({
    required this.id,
    required this.name,
    required this.price,
    required this.calories,
    required this.weight,
    required this.image,
    required this.category,
    required this.description,
    required this.proteins,
    required this.carbs,
    required this.fats,
    required this.energy,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      calories: json['calories'] as int,
      weight: json['weight'] as int,
      image: json['image'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      proteins: (json['proteins'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      fats: (json['fats'] as num).toDouble(),
      energy: json['energy'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'calories': calories,
      'weight': weight,
      'image': image,
      'category': category,
      'description': description,
      'proteins': proteins,
      'carbs': carbs,
      'fats': fats,
      'energy': energy,
    };
  }
}