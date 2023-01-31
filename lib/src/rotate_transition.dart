import 'package:flutter/widgets.dart';
import 'package:flutter_page_transitionz/src/page_transition.dart';

class RotateTransition<T> extends PageTransition<T> {
  RotateTransition({
    required super.child,
    this.alignment = Alignment.center,
  });

  final Alignment alignment;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: alignment,
      turns: animation,
      child: ScaleTransition(
        alignment: alignment,
        scale: animation,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }
}
