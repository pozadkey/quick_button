library quick_button;

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class QuickButton extends StatefulWidget {
  String labelText;
  Color? labelColor;
  double? labelSize;
  FontWeight? labelWeight;
  double? labelSpacing;
  IconData? prefixIcon;
  IconData? suffixIcon;
  double? iconSize;
  double? buttonSize;
  double? borderRadius;
  Color? borderColor;
  double? borderSize;
  Color? backgroundColor;
  Color? labelHoverIn;
  Color? backgroundHoverIn;
  Color? labelHoverOut;
  Color? backgroundHoverOut;
  String? imageIcon;
  final Function onPressed;

  QuickButton(
      {Key? key,
      required this.labelText,
      this.labelColor,
      this.labelSize,
      this.labelWeight,
      this.labelSpacing,
      this.prefixIcon,
      this.suffixIcon,
      this.iconSize,
      this.buttonSize,
      this.borderRadius,
      this.borderColor,
      this.borderSize,
      this.backgroundColor,
      this.labelHoverIn,
      this.backgroundHoverIn,
      this.labelHoverOut,
      this.backgroundHoverOut,
      this.imageIcon,
      required this.onPressed})
      : super(key: key);

  @override
  State<QuickButton> createState() => _QuickButtonState();
}

class _QuickButtonState extends State<QuickButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
        fontSize: widget.labelSize ?? 13,
        color: widget.labelColor ?? Colors.white,
        letterSpacing: widget.labelSpacing ?? 0.3,
        fontWeight: widget.labelWeight ?? FontWeight.w600);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.labelColor = widget.labelHoverIn;
          widget.backgroundColor = widget.backgroundHoverIn;
        });
      },
      onExit: (m) {
        setState(() {
          widget.labelColor = widget.labelHoverOut;
          widget.backgroundColor = widget.backgroundHoverOut;
        });
      },
      child: SizedBox(
        width: widget.buttonSize ?? 200.0,
        child: TextButton(
          child: Container(
            padding: width >= 800 ? EdgeInsets.all(8) : EdgeInsets.all(6),
            child: FittedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.suffixIcon == null &&
                      widget.prefixIcon != null) ...{
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
                    Text(
                      widget.labelText,
                      style: buttonFont,
                    ),
                    Icon(
                      widget.suffixIcon,
                      color: widget.labelColor,
                      size: widget.iconSize ?? 15,
                    ),
                  } else if (widget.prefixIcon == null &&
                      widget.suffixIcon != null) ...{
                    Icon(
                      widget.prefixIcon,
                      color: widget.labelColor,
                      size: widget.iconSize ?? 15,
                    ),
                    Text(
                      widget.labelText,
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
                  } else if (widget.prefixIcon == null ||
                      widget.suffixIcon == null) ...{
                    Text(
                      widget.labelText,
                      style: buttonFont,
                    ),
                  }
                ],
              ),
            ),
          ),
          onPressed: () {
            widget.onPressed();
          },
          style: TextButton.styleFrom(
            backgroundColor:
                widget.backgroundColor ?? Color.fromARGB(255, 31, 31, 31),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: widget.borderColor ?? Colors.transparent,
                  width: widget.borderSize ?? 1),
              borderRadius: BorderRadius.circular(
                widget.borderRadius ?? 0.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
