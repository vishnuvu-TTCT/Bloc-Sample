import 'package:bloc_sample/features/anime/view/anime_view.dart';
import 'package:go_router/go_router.dart';


/// To Navigate anywhere to anywhere use [context.go(/animePage)]
/// to push the screen [context.push()]
/// to pop the screen [context.pop()]
/// to pushReplacement the screen [context.pushReplacement(/animePage)]
///https://codewithandrea.com/articles/flutter-navigation-gorouter-go-vs-push/

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/', // root of the route
        builder: (context, state) => const AnimeScreen(),
        name: 'animePage'
    ),

  ],
);