import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../data/food_data.dart';
import '../widgets/category_chip.dart';
import '../widgets/food_card.dart';
import '../utils/cart_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Biryani';
  String searchQuery = '';
  final CartManager _cartManager = CartManager();
  
  final List<String> categories = FoodData.getCategories();
  final List<FoodItem> foodItems = FoodData.getAllFoodItems();

  @override
  void initState() {
    super.initState();
    _cartManager.addListener(_onCartChanged);
  }

  @override
  void dispose() {
    _cartManager.removeListener(_onCartChanged);
    super.dispose();
  }

  void _onCartChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  List<FoodItem> get filteredItems {
    var items = foodItems.where((item) => item.category == selectedCategory);
    
    if (searchQuery.isNotEmpty) {
      items = items.where((item) => 
        item.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
        item.description.toLowerCase().contains(searchQuery.toLowerCase())
      );
    }
    
    return items.toList();
  }

  void _showCartDialog() {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          _cartManager.addListener(() {
            if (mounted) {
              setDialogState(() {});
            }
          });
          
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Row(
              children: [
                const Icon(Icons.shopping_bag, color: Color(0xFF2D6A4F)),
                const SizedBox(width: 12),
                const Text('Shopping Cart'),
              ],
            ),
            content: _cartManager.items.isEmpty
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 64,
                        color: Color(0xFF52B788),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Your cart is empty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF52B788),
                        ),
                      ),
                    ],
                  )
                : SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: _cartManager.items.length,
                          itemBuilder: (context, index) {
                            final cartItem = _cartManager.items[index];
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  cartItem.foodItem.image,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                cartItem.foodItem.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              subtitle: Text(
                                '\$${cartItem.foodItem.price.toStringAsFixed(0)} x ${cartItem.quantity}',
                                style: const TextStyle(
                                  color: Color(0xFF52B788),
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  _cartManager.removeItem(cartItem.foodItem.id);
                                  if (_cartManager.items.isEmpty) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            );
                          },
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$${_cartManager.totalPrice.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D6A4F),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
              if (_cartManager.items.isNotEmpty)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Checkout feature coming soon!'),
                        backgroundColor: Color(0xFF2D6A4F),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D6A4F),
                  ),
                  child: const Text('Checkout'),
                ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu_rounded, size: 28),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Menu feature coming soon!'),
                          backgroundColor: Color(0xFF2D6A4F),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    color: const Color(0xFF1B4332),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Assalam-o-Alaikum, Zara',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B4332),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Aaj kya khana hai?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF52B788),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF2D6A4F),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_bag_outlined, size: 24),
                          onPressed: _showCartDialog,
                          color: Colors.white,
                        ),
                      ),
                      if (_cartManager.itemCount > 0)
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 20,
                              minHeight: 20,
                            ),
                            child: Text(
                              '${_cartManager.itemCount}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F8F4),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF2D6A4F).withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: const Color(0xFF52B788).withOpacity(0.5),
                    ),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF52B788),
                    ),
                    suffixIcon: searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(
                              Icons.clear_rounded,
                              color: Color(0xFF52B788),
                            ),
                            onPressed: () {
                              setState(() {
                                searchQuery = '';
                              });
                            },
                          )
                        : null,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryChip(
                    label: categories[index],
                    isSelected: selectedCategory == categories[index],
                    onTap: () {
                      setState(() {
                        selectedCategory = categories[index];
                        searchQuery = '';
                      });
                    },
                  );
                },
              ),
            ),
            
            const SizedBox(height: 20),
            
            Expanded(
              child: filteredItems.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search_off_rounded,
                            size: 64,
                            color: const Color(0xFF52B788).withOpacity(0.5),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            searchQuery.isNotEmpty
                                ? 'No results found for "$searchQuery"'
                                : 'No items in this category',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xFF52B788).withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return FoodCard(
                          foodItem: filteredItems[index],
                          onTap: () async {
                            final result = await Navigator.pushNamed(
                              context,
                              '/detail',
                              arguments: filteredItems[index],
                            );
                            // If returning from detail screen after adding to cart
                            if (result == 'view_cart') {
                              _showCartDialog();
                            }
                          },
                          onAddToCart: () {
                            _cartManager.addItem(filteredItems[index]);
                          },
                          onViewCart: _showCartDialog,
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