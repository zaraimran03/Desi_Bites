# 🍛 Desi Bites

> A beautifully designed **Flutter mobile app** for browsing and ordering authentic Pakistani/Desi food — featuring Biryani, Karahi, Curry, and BBQ dishes with a smooth, modern UI.

---

## 📱 Screenshots

> _Add screenshots of your app here after running it!_

---

## ✨ Features

| Feature | Description |
|---|---|
| 🏠 Home Screen | Browse food items by category with search functionality |
| 🍽️ Food Detail | View full dish info — calories, protein, carbs, fats, weight |
| 🛒 Cart Manager | Add/remove items, view cart summary in a dialog |
| 💳 Checkout Screen | Review order and place it |
| 💫 Splash Screen | Animated launch screen |
| 🗂️ Category Filter | Filter by Biryani, Karahi, Curry, BBQ |
| 🔍 Search | Search dishes by name or description |
| 📊 Nutrition Info | Detailed nutritional breakdown per dish |

---

## 🗂️ Project Structure

```
lib/
├── main.dart                  # App entry point & routing
├── data/
│   └── food_data.dart         # All food items & categories data
├── models/
│   └── food_item.dart         # FoodItem data model
├── screens/
│   ├── splash_screen.dart     # Launch/intro screen
│   ├── home_screen.dart       # Main browsing screen
│   ├── food_detail_screen.dart# Dish detail & nutrition info
│   └── checkout_screen.dart   # Order summary & checkout
├── widgets/
│   ├── food_card.dart         # Food item card widget
│   ├── category_chip.dart     # Category filter chip
│   ├── menu_drawer.dart       # Side navigation drawer
│   └── nutrition_info_card.dart # Nutrition breakdown widget
└── utils/
    ├── cart_manager.dart      # Cart state management
    └── constants.dart         # App-wide constants & colors
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (Dart SDK `>=3.0.0 <4.0.0`)
- Android Studio / VS Code with Flutter extension
- Android Emulator or a physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/zaraimran03/Desi_Bites.git
   cd Desi_Bites
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| **Flutter** | Cross-platform UI framework |
| **Dart** | Programming language |
| **Material 3** | Design system |
| **Custom Widgets** | Reusable UI components |

### Supported Platforms
- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

---

## 🍜 Food Categories

- 🍚 **Biryani** — Chicken, Mutton, Vegetable
- 🥘 **Karahi** — Chicken, Mutton
- 🍛 **Curry** — Various traditional curries
- 🔥 **BBQ** — Grilled & smoky specialties

---

## 🎨 Design

- Color theme: Deep green `#2D6A4F` — inspired by fresh herbs and Pakistani culture
- Font: Poppins
- Clean, minimal card-based layout
- Smooth navigation transitions

---

## 👩‍💻 Author

**Zara Imran**
- GitHub: [@zaraimran03](https://github.com/zaraimran03)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
