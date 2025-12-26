# Tic-Tac-Toe Mobile App

A feature-rich Flutter-based Tic-Tac-Toe mobile application with AI opponents and advanced game features.

## Features

### Gameplay
- **Human vs AI Mode**: Challenge the computer with three difficulty levels
- **AI Difficulty Modes**:
  - **Random**: AI makes random valid moves
  - **Logic-Based**: AI uses strategic decision-making
  - **Minimax**: Unbeatable AI using the minimax algorithm
- **Undo Functionality**: Take back moves during gameplay
- **Persistent Score Tracking**: Your wins, losses, and draws are saved across sessions

### Technical Features
- **PSP-Based Predictive Model**: Project estimation using Personal Software Process metrics
- **Development Time Tracking**: Monitors development effort
- **LOC Metrics**: Lines of Code analysis for project size estimation
- **State Management**: Implements Flutter's recommended state management practices



## Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- iOS development tools (for iOS deployment)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Byte-Craft-dev/tic_tac_toe.git
cd tic_tac_toe
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── src/
│   ├── localization/     # Internationalization files
│   ├── models/           # Data models
│   ├── screens/          # UI screens
│   ├── widgets/          # Reusable widgets
│   └── services/         # Business logic and AI
assets/
├── images/               # App images and icons
└── fonts/                # Custom fonts
```

## Development

This project follows Flutter's [simple app state management tutorial](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

## Localization

This project supports internationalization based on ARB files in `lib/src/localization/`.

To add support for additional languages, refer to the [Internationalizing Flutter apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) tutorial.

## PSP Metrics

This project implements Personal Software Process (PSP) metrics including:
- Development time tracking
- Lines of Code (LOC) measurement
- Predictive modeling for effort estimation

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the excellent framework
- Minimax algorithm implementation inspiration from classic AI literature
- PSP methodology by Watts Humphrey

## Contact

Linkdin - [Tharushi Krawgoda](http://www.linkedin.com/in/tharushi-navodya-)

Project Link: [https://github.com/Byte-Craft-dev/tic_tac_toe](https://github.com/Byte-Craft-dev/tic_tac_toe)

