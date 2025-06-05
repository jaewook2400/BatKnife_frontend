import 'dart:ui';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(42.8),
        bottomRight: Radius.circular(42.8),
      ),
      child: Container(
        width: double.infinity,
        height: 83,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.57, sigmaY: 3.57),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.extension),
                label: '퍼즐',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled),
                label: '영상',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '마이페이지',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
