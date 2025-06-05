import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(58);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: SizedBox(
          height: 48,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (showBackButton)
                Positioned(
                    left: 0,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(), // 최소화
                      icon: SizedBox(
                        width: 11.46,
                        height: 20.34,
                        child: Image.asset(
                          'assets/icons/back.png', // 경로는 네가 넣은 이미지에 맞춰
                          fit: BoxFit.contain,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )

                ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF35353F),
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const Positioned(
                right: 16,
                child: Opacity(
                  opacity: 0,
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: Stack(),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
