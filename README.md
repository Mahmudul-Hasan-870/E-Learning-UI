# E-Learning UI

This project is a Flutter-based e-learning application with a sleek and modern user interface. It features various screens including an onboarding screen, featured categories, and a detailed learning screen with video playback functionality.

## Table of Contents

- [Screenshots](#screenshots)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Screenshots

### Onboarding Screen
![Onboarding Screen](https://i.ibb.co/yk1hvsX/001.png)

### Featured Categories
![Featured Categories](https://i.ibb.co/728FSLP/002.png)

### Learning Screen
![Learning Screen](https://i.ibb.co/9hBJKmK/003.png)

## Features

- **Onboarding Screen:** An introductory screen to welcome users and encourage them to get started.
- **Featured Categories:** Displays various learning categories in a grid layout.
- **Learning Screen:** Provides detailed information about a specific category and includes video playback functionality.

## Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/e-learning-ui.git
    cd e-learning-ui
    ```

2. **Install dependencies:**

    ```sh
    flutter pub get
    ```

3. **Run the app:**

    ```sh
    flutter run
    ```

## Usage

1. **Onboarding Screen:** Users are greeted with a welcoming message and a 'Get Started' button.
2. **Featured Categories:** Users can explore different categories. Clicking on a category navigates to the detailed learning screen.
3. **Learning Screen:** Users can watch an introductory video and see details about the selected category.

## Folder Structure

```plaintext
lib/
├── utils/
│   ├── colors.dart
├── views/
│   ├── NavBarView/
│   │   └── navbar_view.dart
│   ├── OnBoardingScreen/
│   │   └── onboarding_screen.dart
│   ├── FeaturedScreen/
│   │   └── featured_page.dart
│   ├── LearningScreen/
│   │   └── learning_screen.dart
├── widgets/
│   ├── app_bar.dart
│   ├── button.dart
main.dart
```
## Dependencies

- **flutter:** SDK for building cross-platform apps.
- **google_fonts:** Provides access to the Google Fonts API.
- **iconsax:** A collection of icons.
- **video_player:** Video playback functionality.

Add these dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^2.1.0
  iconsax: ^0.0.4
  video_player: ^2.1.12
```
## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


