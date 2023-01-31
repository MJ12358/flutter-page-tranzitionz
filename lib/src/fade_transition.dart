import 'package:flutter/widgets.dart';
import 'package:flutter_page_transitionz/src/page_transition.dart';

class FadeTranzition<T> extends PageTransition<T> {
  FadeTranzition({
    required super.child,
  });

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
