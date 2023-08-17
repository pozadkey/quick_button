/// A library that provides the [QuickButton] widget for creating customizable buttons.

library quick_button;

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

/// A customizable button widget for Flutter applications.
class QuickButton extends StatefulWidget {
  /// The label text displayed on the button.
  final String? labelText;

  /// The color of the label text. Default is Colors.white.
  Color? labelColor;

  /// The font size of the label text. Default size is 13.
  final double? labelSize;

  /// The font weight of the label text. Default is FontWeight.w600
  final FontWeight? labelWeight;

  /// The spacing between characters in the label text.
  final double? labelSpacing;

  /// The icon placed within the button.
  final IconData? icon;

  /// The icon placed before the label text.
  final IconData? prefixIcon;

  /// The icon placed after the label text.
  final IconData? suffixIcon;

  /// The size of all icons. Default value is 15.0.
  final double? iconSize;

  /// The width of the button. Default value is 150.0.
  final double? buttonWidth;

  /// The height of the button.
  final double? buttonHeight;

  /// The degree of the roundness for the corners of the button.
  final double? borderRadius;

  /// The color of the border surrounding the button.
  final Color? borderColor;

  /// The width of the border surrounding the button. Default value is 1.0.
  final double? borderSize;

  /// The background color of the button.
  Color? backgroundColor;

  /// The color of the label text when the mouse moves within the widget.
  final Color? hoverIn;

  /// The background color of button when the mouse moves within the widget.
  final Color? backgroundHoverIn;

  /// The color of the label text when the mouse moves outside the widget.
  final Color? hoverOut;

  /// The background color of button when the mouse moves outside the widget.
  final Color? backgroundHoverOut;

  /// Callback function to execute when the button is pressed.
  final Function onPressed;

  /// Creates a new [QuickButton] instance.
  ///
  /// The [onPressed] callback must be provided to handle the button tap event.
  QuickButton({
    Key? key,
    required this.labelText,
    this.labelColor,
    this.labelSize,
    this.labelWeight,
    this.labelSpacing,
    this.buttonWidth,
    this.buttonHeight,
    this.borderRadius,
    this.borderColor,
    this.borderSize,
    this.backgroundColor,
    this.hoverIn,
    this.backgroundHoverIn,
    this.hoverOut,
    this.backgroundHoverOut,
    required this.onPressed,
  })  : icon = null,
        prefixIcon = null,
        suffixIcon = null,
        iconSize = null,
        super(key: key);

  /// Creates a new [QuickButton] instance with only an icon.
  ///
  /// The [icon] parameter specifies the icon placed within the button.
  /// The [onPressed] parameter is required and specifies the callback function to be invoked when the button is pressed.
  QuickButton.icon({
    Key? key,
    required this.icon,
    this.labelColor,
    this.iconSize,
    this.buttonWidth,
    this.buttonHeight,
    this.borderRadius,
    this.borderColor,
    this.borderSize,
    this.backgroundColor,
    this.hoverIn,
    this.backgroundHoverIn,
    this.hoverOut,
    this.backgroundHoverOut,
    required this.onPressed,
  })  : labelText = null,
        labelSize = null,
        labelSpacing = null,
        labelWeight = null,
        prefixIcon = null,
        suffixIcon = null,
        super(key: key);

  /// Creates a new [QuickButton] instance with only a prefix icon.
  ///
  /// The [labelText] parameter specifies the text label to display on the button.
  /// The [prefixIcon] parameter specifies the icon placed before the label text.
  /// The [onPressed] parameter is required and specifies the callback function to be invoked when the button is pressed.
  QuickButton.prefixIcon({
    Key? key,
    required this.labelText,
    this.labelColor,
    this.labelSize,
    this.labelWeight,
    this.labelSpacing,
    required this.prefixIcon,
    this.iconSize,
    this.buttonWidth,
    this.buttonHeight,
    this.borderRadius,
    this.borderColor,
    this.borderSize,
    this.backgroundColor,
    this.hoverIn,
    this.backgroundHoverIn,
    this.hoverOut,
    this.backgroundHoverOut,
    required this.onPressed,
  })  : icon = null,
        suffixIcon = null,
        super(key: key);

  /// Creates a new [QuickButton] instance with only a suffix icon.
  ///
  /// The [labelText] parameter specifies the text label to display on the button.
  /// The [suffixIcon] parameter specifies the icon placed after the label text.
  /// The [onPressed] parameter is required and specifies the callback function to be invoked when the button is pressed.
  QuickButton.suffixIcon({
    Key? key,
    required this.labelText,
    this.labelColor,
    this.labelSize,
    this.labelWeight,
    this.labelSpacing,
    required this.suffixIcon,
    this.iconSize,
    this.buttonWidth,
    this.buttonHeight,
    this.borderRadius,
    this.borderColor,
    this.borderSize,
    this.backgroundColor,
    this.hoverIn,
    this.backgroundHoverIn,
    this.hoverOut,
    this.backgroundHoverOut,
    required this.onPressed,
  })  : icon = null,
        prefixIcon = null,
        super(key: key);

  @override
  State<QuickButton> createState() => _QuickButtonState();
}

class _QuickButtonState extends State<QuickButton> {
  @override
  Widget build(BuildContext context) {
    // Obtains the width of the current screen's viewport.
    double width = MediaQuery.of(context).size.width;

    return MouseRegion(
      /// Detects mouse movement within the widget.
      onEnter: (_) {
        _updateButtonColors(widget.hoverIn, widget.backgroundHoverIn);
      },

      /// Detects mouse movement outside the widget.
      onExit: (_) {
        _updateButtonColors(widget.hoverOut, widget.backgroundHoverOut);
      },

      child: InkWell(
        key: const Key('onTapButton'),
        child: Container(
          key: const Key('buttonDecoration'),
          width: widget.buttonWidth ?? 150.0,
          height: widget.buttonHeight ?? 35.0,
          padding: width >= 800
              ? widget.labelText == null
                  ? const EdgeInsets.all(4)
                  : const EdgeInsets.all(6)
              : const EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.transparent,
              borderRadius: BorderRadius.circular(
                widget.borderRadius ?? 0.0,
              ),
              border: Border.all(
                  color: widget.borderColor ?? Colors.transparent,
                  width: widget.borderSize ?? 1.0)),
          child: FittedBox(
            child: Row(
              children: _buildButtonChildren(),
            ),
          ),
        ),
      ),
    );
  }

  /// Updates the button's label color and background color.
  ///
  /// The [labelColor] parameter specifies the new label color.
  /// The [backgroundColor] parameter specifies the new background color.
  void _updateButtonColors(Color? labelColor, Color? backgroundColor) {
    setState(() {
      widget.labelColor = labelColor;
      widget.backgroundColor = backgroundColor;
    });
  }

  /// Builds and returns the list of child widgets for the button.
  List<Widget> _buildButtonChildren() {
    final buttonFont = TextStyle(
        fontSize: widget.labelSize,
        color: widget.labelColor ?? Colors.black,
        letterSpacing: widget.labelSpacing ?? 0.3,
        fontWeight: widget.labelWeight ?? FontWeight.w600);

    return [
      if (widget.suffixIcon == null && widget.prefixIcon != null) ...{
        const SizedBox(
          width: 18,
        ),
        Icon(
          widget.prefixIcon,
          color: widget.labelColor,
          size: widget.iconSize ?? 15,
        ),
        const SizedBox(
          width: 7,
        ),
        widget.labelText == null
            ? Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.labelColor,
              )
            : Text(
                key: const Key('labelText'),
                widget.labelText.toString(),
                style: buttonFont,
              ),
        Icon(
          widget.suffixIcon,
          color: widget.labelColor,
          size: widget.iconSize ?? 15,
        ),
      } else if (widget.prefixIcon == null && widget.suffixIcon != null) ...{
        Icon(
          widget.prefixIcon,
          color: widget.labelColor,
          size: widget.iconSize ?? 15,
        ),
        widget.labelText == null
            ? Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.labelColor,
              )
            : Text(
                key: const Key('labelText'),
                widget.labelText.toString(),
                style: buttonFont,
              ),
        const SizedBox(
          width: 7,
        ),
        Icon(
          widget.suffixIcon,
          color: widget.labelColor,
          size: widget.iconSize ?? 15,
        ),
        const SizedBox(
          width: 18,
        ),
      } else if (widget.prefixIcon == null || widget.suffixIcon == null) ...{
        widget.labelText == null
            ? Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.labelColor,
              )
            : Text(
                key: const Key('labelText'),
                widget.labelText.toString(),
                style: buttonFont,
              ),
      } else if (widget.prefixIcon == null ||
          widget.suffixIcon == null ||
          widget.labelText == null) ...{
        widget.labelText == null
            ? Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.labelColor,
              )
            : Text(
                key: const Key('labelText'),
                widget.labelText.toString(),
                style: buttonFont,
              ),
      }
    ];
  }
}
