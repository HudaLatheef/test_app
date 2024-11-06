# Flutter E-Commerce App


A simple Flutter-based e-commerce app designed as an interview project, demonstrating a clean architecture using the Flutter BLoC state management approach. This app includes essential screens for login, products listing, and product details.

# Features
Login Page: User authentication page for secure access.
Products Screen: Displays a list of available products with thumbnail images, prices, and brief descriptions fetched from REST API end points.
Product Details Screen: Shows detailed information for a selected product, including high-resolution images, description, and pricing details.
# Architecture
This project is built using the BLoC (Business Logic Component) pattern to separate business logic from UI, ensuring a clean and testable codebase. This architecture helps in managing states effectively and making the app modular and easy to maintain.

# Folder Structure
The project structure is organized as follows:


lib/
  blocs/               # BLoC components for handling business logic
    login_bloc.dart
    products_bloc.dart
     details_bloc.dart
  models/              # Data models
  repositories/        # Data repositories and API calls
  screens/             # UI screens for login, product listing, and details
  widgets/             # Reusable widgets
  main.dart            # App entry point

# Getting Started
Prerequisites:
Ensure you have the following installed:

# Flutter SDK:
A code editor like VS Code or Android Studio
# Installation
Clone the repository:

git clone https://github.com/HudaLatheef/test_app.git

Navigate to the project directory:

cd test_app
Install dependencies:

flutter pub get
# Running the App
1.Connect your device or start an emulator.
2.Run the app:
  flutter run

# Screens Overview
1. Login Page
Allows users to log in with email and password.
Displays validation messages for incorrect inputs.
2. Products Screen
Lists all available products.
Each product card displays an image, name, and price.
3. Product Details Screen
Provides detailed information on a selected product.
Displays multiple images, descriptions, and other relevant details.

# State Management with BLoC
The Flutter BLoC pattern has been used to manage the app’s states:

LoginBLoC: Manages authentication logic and state changes.
ProductsBLoC: Handles fetching and displaying the list of products.
![Simulator Screenshot - iPhone SE (3rd generation) - 2024-11-07 at 00 53 02](https://github.com/user-attachments/assets/8db92fca-3ba0-4513-8870-7170aba1fdd9)

# License
This project is licensed under the MIT License. See the LICENSE file for details.

# Screenshots
![Simulator Screenshot - iPhone SE (3rd generation) - 2024-11-07 at 00 53 16](https://github.com/user-attachments/assets/eb3dc345-c3bb-48e5-ab7c-5b620825dad8)
![Simulator Screenshot - iPhone SE (3rd generation) - 2024-11-07 at 00 53 02](https://github.com/user-attachments/assets/01cc536e-6898-48f3-a30a-4f5fe9098aeb)
![Simulator Screenshot - iPhone SE (3rd generation) - 2024-11-07 at 00 52 56](https://github.com/user-attachments/assets/bcc88c19-6154-4988-b2b5-bea613f03c86)
![Simulator Screenshot - iPhone SE (3rd generation) - 2024-11-06 at 18 51 35](https://github.com/user-attachments/assets/a51b438e-0188-44df-8274-c89fb2b74223)

