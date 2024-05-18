import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
  });

  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
          shadowColor: Colors.grey.withOpacity(0.06),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStayles.styleSemiBold18.copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
