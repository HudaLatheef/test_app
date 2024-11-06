# test_app

Flutter E-Commerce App
A simple Flutter-based e-commerce app designed as an interview project, demonstrating a clean architecture using the Flutter BLoC state management approach. This app includes essential screens for login, products listing, and product details.

Features
Login Page: User authentication page for secure access.
Products Screen: Displays a list of available products with thumbnail images, prices, and brief descriptions.
Product Details Screen: Shows detailed information for a selected product, including high-resolution images, description, and pricing details.
Architecture
This project is built using the BLoC (Business Logic Component) pattern to separate business logic from UI, ensuring a clean and testable codebase. This architecture helps in managing states effectively and making the app modular and easy to maintain.

Folder Structure
The project structure is organized as follows:

bash
Copy code
lib/
├── blocs/               # BLoC components for handling business logic
│   ├── login_bloc.dart
│   ├── products_bloc.dart
│   └── details_bloc.dart
├── models/              # Data models
├── repositories/        # Data repositories and API calls
├── screens/             # UI screens for login, product listing, and details
├── widgets/             # Reusable widgets
└── main.dart            # App entry point
Getting Started
Prerequisites
Ensure you have the following installed:

Flutter SDK
A code editor like VS Code or Android Studio
Installation
Clone the repository:
bash
Copy code
git clone https://github.com/yourusername/interview-ecommerce-app.git
Navigate to the project directory:
bash
Copy code
cd interview-ecommerce-app
Install dependencies:
bash
Copy code
flutter pub get
Running the App
Connect your device or start an emulator.
Run the app:
bash
Copy code
flutter run
Screens Overview
1. Login Page
Allows users to log in with email and password.
Displays validation messages for incorrect inputs.
2. Products Screen
Lists all available products.
Each product card displays an image, name, and price.
3. Product Details Screen
Provides detailed information on a selected product.
Displays multiple images, descriptions, and other relevant details.
State Management with BLoC
The Flutter BLoC pattern has been used to manage the app’s states:

LoginBLoC: Manages authentication logic and state changes.
ProductsBLoC: Handles fetching and displaying the list of products.
DetailsBLoC: Manages states for displaying detailed information of a selected product.
Future Enhancements
Adding a cart and checkout flow.
Implementing Firebase or a backend for persistent data storage.
Adding test coverage for UI and business logic.
Contributing
If you would like to contribute, please open an issue or submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.
