import 'package:flutter/material.dart';
import '../models/food_item.dart';

/// Simple Cart Manager using ChangeNotifier
/// Manages cart items and notifies listeners of changes
class CartManager extends ChangeNotifier {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);
  
  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);
  
  double get totalPrice => _items.fold(0.0, (sum, item) => sum + (item.foodItem.price * item.quantity));

  void addItem(FoodItem foodItem, {int quantity = 1}) {
    // Check if item already exists
    final existingIndex = _items.indexWhere((item) => item.foodItem.id == foodItem.id);
    
    if (existingIndex >= 0) {
      // Update quantity
      _items[existingIndex].quantity += quantity;
    } else {
      // Add new item
      _items.add(CartItem(foodItem: foodItem, quantity: quantity));
    }
    
    notifyListeners();
  }

  void removeItem(String foodItemId) {
    _items.removeWhere((item) => item.foodItem.id == foodItemId);
    notifyListeners();
  }

  void updateQuantity(String foodItemId, int newQuantity) {
    final index = _items.indexWhere((item) => item.foodItem.id == foodItemId);
    if (index >= 0) {
      if (newQuantity <= 0) {
        _items.removeAt(index);
      } else {
        _items[index].quantity = newQuantity;
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}

/// Cart Item Model
class CartItem {
  final FoodItem foodItem;
  int quantity;

  CartItem({
    required this.foodItem,
    required this.quantity,
  });
}