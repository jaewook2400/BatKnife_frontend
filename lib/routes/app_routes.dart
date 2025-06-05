import '../pages/puzzle/puzzle_page.dart';

class AppRoutes {
  static const puzzle = '/puzzle';

  static final routes = {
    puzzle: (context) => const PuzzlePage(),
    // 다른 페이지들...
  };
}
