import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class BlaButton extends StatelessWidget {
  const BlaButton({super.key, this.icon, required this.text, required this.isPrimary, required this.onPressed});

  final IconData? icon;
  final bool isPrimary;
  final String text;
  final VoidCallback onPressed;


  Color get backgroundColor => isPrimary ? BlaColors.primary : BlaColors.white;


  Color get textColor => isPrimary ? BlaColors.white : BlaColors.primary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: BlaSpacings.xxl,
      child: ElevatedButton(
        
        onPressed: onPressed,
      
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
      
            if(icon!= null) ...[
              Icon(icon),
              SizedBox(width: 8,)
            ],
            Text(text,style: TextStyle( fontSize: 18),)
          ],
        
        ),
      ),
    );
  }
}
