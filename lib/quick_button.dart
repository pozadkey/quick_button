/// Import Quick Button Library.
library quick_button;

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

/// Create a stateful widget class
class QuickButton extends StatefulWidget {
  String? labelText;
  Color? labelColor;
  double? labelSize;
  FontWeight? labelWeight;
  double? labelSpacing;
  IconData? icon;
  IconData? prefixIcon;
  IconData? suffixIcon;
  double? iconSize;
  double? buttonWidth;
  double? buttonHeight;
  double? borderRadius;
  Color? borderColor;
  double? borderSize;
  Color? backgroundColor;
  Color? labelHoverIn;
  Color? backgroundHoverIn;
  Color? labelHoverOut;
  Color? backgroundHoverOut;
  final Function onPressed;

  QuickButton(
      {Key? key,
      this.labelText,
      this.labelColor,
      this.labelSize,
      this.labelWeight,
      this.labelSpacing,
      this.icon,
      this.prefixIcon,
      this.suffixIcon,
      this.iconSize,
      this.buttonWidth,
      this.buttonHeight,
      this.borderRadius,
      this.borderColor,
      this.borderSize,
      this.backgroundColor,
      this.labelHoverIn,
      this.backgroundHoverIn,
      this.labelHoverOut,
      this.backgroundHoverOut,
      required this.onPressed})
      : super(key: key);

  @override
  State<QuickButton> createState() => _QuickButtonState();
}

class _QuickButtonState extends State<QuickButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    /// Button Font style.
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
      child: InkWell(
          key: const Key('onTapButton'),
          onTap: () {
            widget.onPressed();
          },
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

            /// Button decoration.
            decoration: BoxDecoration(
                color: widget.backgroundColor ??
                    const Color.fromARGB(255, 31, 31, 31),
                borderRadius: BorderRadius.circular(
                  widget.borderRadius ?? 0.0,
                ),
                border: Border.all(
                    color: widget.borderColor ?? Colors.transparent,
                    width: widget.borderSize ?? 1)),
            child: FittedBox(
              child: Row(children: [
                /// Button without prefixIcon.
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
                }

                /// Button with suffixIcon.
                else if (widget.prefixIcon == null &&
                    widget.suffixIcon != null) ...{
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
                }

                /// Button with labelText only.
                else if (widget.prefixIcon == null ||
                    widget.suffixIcon == null) ...{
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

                /// Button with Icon only.
                else if (widget.prefixIcon == null ||
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
              ]),
            ),
          )),
    );
  }
}
