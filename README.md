# 🍛 Desi Bites

> A beautifully designed **Flutter mobile app** for browsing and ordering authentic Pakistani/Desi food — featuring Biryani, Karahi, Curry, and BBQ dishes with a smooth, modern UI.

---

## 📱 Screenshots
<img width="1362" height="719" alt="image" src="https://github.com/user-attachments/assets/6d71af61-0bb6-411f-89bc-c5c6e29af290" /><img width="1366" height="433" alt="image" src="https://github.com/user-attachments/assets/056778b5-5794-4d0f-a75e-7cf945222c32" /><img width="1339" height="644" alt="image" src="https://github.com/user-attachments/assets/7535de76-e3d0-4ef2-bb7b-e6af4bfe5ff2" /><img width="1359" height="728" alt="image" src="https://github.com/user-attachments/assets/524e1dad-657c-43ff-b86b-9a256b2a6670" /><img width="1365" height="718" alt="image" src="https://github.com/user-attachments/assets/ed1ba956-6e4c-4d89-834e-e8c103b0ac64" />







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
