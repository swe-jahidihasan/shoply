import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FadePage extends CustomTransitionPage {
  FadePage({required super.key, required super.child})
    : super(
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeOut).animate(animation),
            child: child,
          );
        },
      );
}
