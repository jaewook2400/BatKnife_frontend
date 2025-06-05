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
      appBar: CustomAppBar(title: '퍼즐즐'),
      body: Stack(
        children: [
          Positioned(
            top: FigmaHelper.fromFigmaHeight(context, 136),
            left: FigmaHelper.fromFigmaWidth(context, 16),
            child: SizedBox(
              width: FigmaHelper.fromFigmaWidth(context, 130),
              height: FigmaHelper.fromFigmaHeight(context, 21),
              child: const Text(
                '2025년 1월 10일',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  fontSize: 16, // 텍스트는 필요 시 비율화 가능
                  height: 1.3125,
                  letterSpacing: -0.32,
                  color: Color(0xFF353535),
                ),
              ),
            ),
          ),

          Positioned(
            top: FigmaHelper.fromFigmaHeight(context, 165),
            left: FigmaHelper.fromFigmaHeight(context, 16),
            child: SizedBox(
              width: FigmaHelper.fromFigmaHeight(context, 300),
              height: FigmaHelper.fromFigmaHeight(context, 30),
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
          Positioned(
            top: 448.92,
            left: 215.93,
            child: Transform.rotate(
              angle: -10.57 * math.pi / 180,
              child: Container(
                width: 153.94,
                height: 188,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 305.3,
            left: 42,
            child: Transform.rotate(
              angle: 8.28 * math.pi / 180,
              child: Container(
                width: 172.89,
                height: 97.22,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 359.23,
            left: 130.17,
            child: Transform.rotate(
              angle: 3.02 * math.pi / 180,
              child: Container(
                width: 150.48,
                height: 188,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 532.33,
            left: -37,
            child: Transform.rotate(
              angle: -0.77 * math.pi / 180,
              child: Container(
                width: 172.89,
                height: 97.22,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 478,
            left: 195.69,
            child: Transform.rotate(
              angle: 11.25 * math.pi / 180,
              child: Container(
                width: 125,
                height: 188,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 491.52,
            left: 45.29,
            child: Transform.rotate(
              angle: -19.02 * math.pi / 180,
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  width: 145.84,
                  height: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFAE3FF),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 288,
            left: 234.21,
            child: Transform.rotate(
              angle: 23.91 * math.pi / 180,
              child: Container(
                width: 105.88,
                height: 104.16,
                decoration: BoxDecoration(
                  color: Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ),

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
}
