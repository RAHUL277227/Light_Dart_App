# Flutter Light & Dark Mode App 🌞🌜

This Flutter project demonstrates how to implement Light and Dark Mode themes. Users can manually switch between the themes with a button or let the app automatically sync with the system's theme settings.

## Features
- **Manual Theme Switcher**: Switch between Light and Dark Mode with a toggle button.
- **Auto-Sync with System Theme**: Automatically changes the app theme based on your system's theme settings.
- **Simple UI**: A user-friendly interface with smooth transitions between themes.
  
## Screenshots
![App Demo](https://github.com/RAHUL277227/Light_Dart_App/blob/main/iphone-x-mockup%20(1).png)
![App Demo](https://github.com/RAHUL277227/Light_Dart_App/blob/main/iphone-x-mockup.png)
  

## Tech Stack
- **Flutter**: The app is built entirely in Flutter.
- **Themes**: Light & Dark themes are implemented using Flutter's `ThemeData`.

## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/flutter-light-dark-mode.git
    ```
2. Navigate into the project directory:
    ```bash
    cd flutter-light-dark-mode
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

## Customization
You can easily customize the colors of both Light and Dark modes by tweaking the `ThemeData` in `main.dart`.

```dart
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  // Add more properties for light theme
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.grey,
  // Add more properties for dark theme
);
