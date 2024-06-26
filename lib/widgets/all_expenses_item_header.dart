import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: isActive
                      ? Colors.white.withOpacity(.1)
                      : const Color(0xffFAFAFA),
                  // shape: OvalBorder(),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159265,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isActive ? Colors.white : const Color(0xff064061),
            size: 20,
          ),
        ),
      ],
    );
  }
}
