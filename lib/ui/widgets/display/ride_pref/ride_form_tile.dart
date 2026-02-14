import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class RideFormTile extends StatelessWidget {
  const RideFormTile({
    super.key,
    required this.firstIcon,
    required this.text,
    this.secondIcon,
    required this.onPressed,
    this.hintText,
    this.isTopField = false,
  });

  final IconData firstIcon;
  final String text;
  final IconData? secondIcon;
  final VoidCallback onPressed;
  final String? hintText;
  final bool isTopField;

  Color get textColor {
    return isTopField ? BlaColors.neutralLight : BlaColors.neutralDark;
  }

  @override
  Widget build(BuildContext context) {
    final displayText = (text.isEmpty && hintText != null) ? hintText! : text;
    return SizedBox(
      width: double.infinity,
      height: BlaSpacings.xxl,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), 
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(firstIcon),
            SizedBox(width: BlaSpacings.l),
            Text(displayText),
            if (secondIcon != null) Icon(secondIcon),
          ],
        ),
      ),
    );
  }
}
