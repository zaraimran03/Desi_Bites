import '../models/food_item.dart';

/// Desi Food Data Source
/// Provides authentic Pakistani/Desi food items
class FoodData {
  FoodData._();
  
  static List<FoodItem> getAllFoodItems() {
    return [
      // Biryani & Rice Dishes
      FoodItem(
        id: '1',
        name: 'Chicken Biryani',
        price: 350,
        calories: 520,
        weight: 800,
        image: 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=800',
        category: 'Biryani',
        description: 'Aromatic basmati rice layered with tender chicken, saffron, and special spices. Served with raita and salad.',
        proteins: 35.0,
        carbs: 68.0,
        fats: 18.0,
        energy: 520,
      ),
      FoodItem(
        id: '2',
        name: 'Mutton Biryani',
        price: 450,
        calories: 580,
        weight: 850,
        image: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=800',
        category: 'Biryani',
        description: 'Premium mutton pieces cooked with fragrant basmati rice, traditional spices, and garnished with fried onions.',
        proteins: 38.0,
        carbs: 65.0,
        fats: 22.0,
        energy: 580,
      ),
      FoodItem(
        id: '3',
        name: 'Vegetable Biryani',
        price: 250,
        calories: 420,
        weight: 700,
        image: 'https://images.unsplash.com/photo-1642821373181-696a54913e93?w=800',
        category: 'Biryani',
        description: 'Mixed vegetables with aromatic rice, perfect blend of spices. A healthy vegetarian delight.',
        proteins: 12.0,
        carbs: 72.0,
        fats: 14.0,
        energy: 420,
      ),
      
      // Karahi Dishes
      FoodItem(
        id: '4',
        name: 'Chicken Karahi',
        price: 800,
        calories: 480,
        weight: 900,
        image: 'https://images.unsplash.com/photo-1610057099443-fde8c4d50f91?w=800',
        category: 'Karahi',
        description: 'Traditional chicken karahi cooked with tomatoes, ginger, and green chilies. Full plate serving.',
        proteins: 42.0,
        carbs: 18.0,
        fats: 28.0,
        energy: 480,
      ),
      FoodItem(
        id: '5',
        name: 'Mutton Karahi',
        price: 1100,
        calories: 550,
        weight: 950,
        image: 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=800',
        category: 'Karahi',
        description: 'Premium mutton karahi with rich gravy, tomatoes, and authentic Pakistani spices. Serves 2-3 people.',
        proteins: 45.0,
        carbs: 15.0,
        fats: 32.0,
        energy: 550,
      ),
      FoodItem(
        id: '6',
        name: 'White Karahi',
        price: 900,
        calories: 460,
        weight: 900,
        image: 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=800',
        category: 'Karahi',
        description: 'Creamy white karahi with yogurt base, perfect blend of mild spices and tender chicken.',
        proteins: 40.0,
        carbs: 12.0,
        fats: 26.0,
        energy: 460,
      ),
      
      // BBQ Items
      FoodItem(
        id: '7',
        name: 'Chicken Tikka',
        price: 380,
        calories: 320,
        weight: 400,
        image: 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=800',
        category: 'BBQ',
        description: 'Boneless chicken pieces marinated in special spices and grilled to perfection. Served with chutney.',
        proteins: 38.0,
        carbs: 8.0,
        fats: 15.0,
        energy: 320,
      ),
      FoodItem(
        id: '8',
        name: 'Seekh Kebab',
        price: 420,
        calories: 380,
        weight: 450,
        image: 'https://images.unsplash.com/photo-1529006557810-274b9b2fc783?w=800',
        category: 'BBQ',
        description: 'Minced meat kebabs with herbs and spices, grilled over charcoal. 8 pieces per plate.',
        proteins: 32.0,
        carbs: 10.0,
        fats: 22.0,
        energy: 380,
      ),
      FoodItem(
        id: '9',
        name: 'Malai Boti',
        price: 450,
        calories: 360,
        weight: 400,
        image: 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=800',
        category: 'BBQ',
        description: 'Creamy marinated chicken cubes with cashew paste and cream, chargrilled to perfection.',
        proteins: 35.0,
        carbs: 12.0,
        fats: 20.0,
        energy: 360,
      ),
      FoodItem(
        id: '10',
        name: 'Chapli Kebab',
        price: 350,
        calories: 400,
        weight: 500,
        image: 'https://images.unsplash.com/photo-1606491956689-2ea866880c84?w=800',
        category: 'BBQ',
        description: 'Peshawari-style flat kebabs with tomatoes, onions, and special spices. 4 pieces per plate.',
        proteins: 28.0,
        carbs: 15.0,
        fats: 24.0,
        energy: 400,
      ),
      
      // Curry Dishes
      FoodItem(
        id: '11',
        name: 'Nihari',
        price: 450,
        calories: 480,
        weight: 650,
        image: 'https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?w=800',
        category: 'Curry',
        description: 'Slow-cooked beef stew with aromatic spices. Traditional breakfast item served with naan.',
        proteins: 40.0,
        carbs: 20.0,
        fats: 26.0,
        energy: 480,
      ),
      FoodItem(
        id: '12',
        name: 'Haleem',
        price: 380,
        calories: 420,
        weight: 600,
        image: 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=800',
        category: 'Curry',
        description: 'Thick paste made from wheat, barley, meat, and lentils. Garnished with ginger and lemon.',
        proteins: 35.0,
        carbs: 48.0,
        fats: 18.0,
        energy: 420,
      ),
      FoodItem(
        id: '13',
        name: 'Chicken Korma',
        price: 550,
        calories: 440,
        weight: 700,
        image: 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=800',
        category: 'Curry',
        description: 'Creamy chicken curry with yogurt and aromatic spices. Rich and flavorful gravy.',
        proteins: 38.0,
        carbs: 22.0,
        fats: 24.0,
        energy: 440,
      ),
      FoodItem(
        id: '14',
        name: 'Daal Makhani',
        price: 280,
        calories: 320,
        weight: 550,
        image: 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=800',
        category: 'Curry',
        description: 'Black lentils cooked with butter and cream. Slow-cooked for hours for perfect texture.',
        proteins: 18.0,
        carbs: 42.0,
        fats: 12.0,
        energy: 320,
      ),
    ];
  }
  
  static List<FoodItem> getFoodItemsByCategory(String category) {
    return getAllFoodItems()
        .where((item) => item.category == category)
        .toList();
  }
  
  static List<String> getCategories() {
    return ['Biryani', 'Karahi', 'BBQ', 'Curry'];
  }
  
  static FoodItem? getFoodItemById(String id) {
    try {
      return getAllFoodItems().firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
  
  static List<FoodItem> searchFoodItems(String query) {
    if (query.isEmpty) return getAllFoodItems();
    
    final lowerQuery = query.toLowerCase();
    return getAllFoodItems()
        .where((item) => 
            item.name.toLowerCase().contains(lowerQuery) ||
            item.description.toLowerCase().contains(lowerQuery))
        .toList();
  }
}