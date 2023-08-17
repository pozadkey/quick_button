# QuickButton
[![pub - v0.0.1](https://img.shields.io/badge/pub-v0.0.1-blue)](https://) [![unit test - passing](https://img.shields.io/badge/unit_test-passing-2ea44f?logo=github)](https://) [![license - MIT](https://img.shields.io/badge/license-MIT-blue)](https://opensource.org/license/mit)

A customizable button widget for Flutter applications that allows you to easily create buttons with various attributes and behaviors.

![Demo](https://firebasestorage.googleapis.com/v0/b/mocon-3075b.appspot.com/o/14.08.2023_01.18.45_REC.gif?alt=media&token=b80d9653-a66b-4921-8ab7-3b5c7ef5aa50)

## Resources

- [Pub package](https://pub.dev/packages/quick_button).
 - [Github](https://github.com/pozadkey/quick_button).

## Installation

To use this package, add `quick_button` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  quick_button: ^1.0.0 # Use the latest version
```

## Usage

Import the package in your Dart code:

```dart
import 'package:quick_button/quick_button.dart';
```

You can then use the `QuickButton` widget to create buttons with different variations:

```dart
QuickButton(
  labelText: 'Submit',
  onPressed: () {
    // Action to perform when the button is pressed
  },
)

QuickButton.icon(
  icon: Icons.star,
  onPressed: () {
    // Action to perform when the button is pressed
  },
)

QuickButton.prefixIcon(
  labelText: 'Start',
  prefixIcon: Icons.play_arrow,
  onPressed: () {
    // Action to perform when the button is pressed
  },
)

QuickButton.suffixIcon(
  labelText: 'End',
  suffixIcon: Icons.stop,
  onPressed: () {
    // Action to perform when the button is pressed
  },
)
```

## Attributes

- `labelText`: The label text displayed on the button.
- `labelColor`: The color of the label text.
- `labelSize`: The font size of the label text.
- `labelWeight`: The font weight of the label text.
- `labelSpacing`: The spacing between characters in the label text.
- `icon`: The icon placed within the button.
- `prefixIcon`: The icon placed before the label text.
- `suffixIcon`: The icon placed after the label text.
- `iconSize`: The size of all icons. Default value is `15.0`.
- `buttonWidth`: The width of the button. Default value is `150.0`.
- `buttonHeight`: The height of the button.
- `borderRadius`: The degree of the roundness for the corners of the button.
- `borderColor`: The color of the border surrounding the button.
- `borderSize`: The width of the border surrounding the button. Default value is `1.0`.
- `backgroundColor`: The background color of the button.
- `hoverIn`: The color of the label text when the mouse moves within the widget.
- `backgroundHoverIn`: The background color of button when the mouse moves within the widget.
- `hoverOut`: The color of the label text when the mouse moves outside the widget.
- `backgroundHoverOut`: The background color of button when the mouse moves outside the widget.
- `onPressed`: Callback function to execute when the button is pressed.



## Callback

All variations of the `QuickButton` widget require an `onPressed` callback function that gets triggered when the button is pressed.

## License

This package is released under the [MIT License](https://opensource.org/license/mit).

## Contributions

Contributions are welcome! If you find any issues or want to enhance this package, feel free to submit a pull request [here](https://github.com/pozadkey/quick_button).
 

