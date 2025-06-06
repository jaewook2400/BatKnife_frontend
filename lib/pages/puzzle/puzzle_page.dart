import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../utils/figma_helper.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({super.key});

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: '퍼즐'),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 48 + 12,
            left: FigmaHelper.fromFigmaWidth(context, 16),
            child: SizedBox(
              width: FigmaHelper.fromFigmaWidth(context, 130),
              child: const Text(
                '2025년 1월 10일',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.3125,
                  letterSpacing: -0.32,
                  color: Color(0xFF353535),
                ),
              ),
            ),
          ),

          Positioned(
            top: 48 + 12 + 26,
            left: FigmaHelper.fromFigmaWidth(context, 16),
            child: SizedBox(
              width: FigmaHelper.fromFigmaWidth(context, 300),
              child: const Text(
                '우리 가족의 사진 퍼즐',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                  height: 0.7778,
                  letterSpacing: -0.32,
                  color: Color(0xFF212121),
                ),
              ),
            ),
          ),

          _puzzleCard(context, 448.92, 215.93, 153.94, 188, -10.57),
          _puzzleCard(context, 305.3, 42, 172.89, 97.22, 8.28),
          _puzzleCard(context, 359.23, 110.17, 150.48, 188, 3.02),
          _puzzleCard(context, 532.33, -37, 172.89, 97.22, -0.77),
          _puzzleCard(context, 520, 150.69, 125, 188, 11.25),
          _puzzleCard(context, 491.52, 45.29, 145.84, 188, -19.02, gradient: true),
          _puzzleCard(context, 288, 200.21, 105.88, 104.16, 23.91),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _puzzleCard(
      BuildContext context,
      double figmaTop,
      double figmaLeft,
      double figmaWidth,
      double figmaHeight,
      double angleDeg, {
        bool gradient = false,
      }) {
    return Positioned(
      top: 48 + FigmaHelper.fromFigmaHeight(context, figmaTop - 136),
      left: FigmaHelper.fromFigmaWidth(context, figmaLeft),
      child: Transform.rotate(
        angle: angleDeg * math.pi / 180,
        child: Opacity(
          opacity: gradient ? 0.9 : 1.0,
          child: Container(
            width: FigmaHelper.fromFigmaWidth(context, figmaWidth),
            height: FigmaHelper.fromFigmaHeight(context, figmaHeight),
            decoration: BoxDecoration(
              color: gradient ? null : const Color(0xFFEBEBEB),
              gradient: gradient
                  ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFAE3FF),
                ],
              )
                  : null,
              borderRadius:
              BorderRadius.circular(FigmaHelper.fromFigmaWidth(context, 6)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}