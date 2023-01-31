import 'package:flutter/widgets.dart';
import 'package:flutter_page_transitionz/flutter_page_transitionz.dart';

class ScaleTranzition<T> extends PageTransition<T> {
  ScaleTranzition({
    required super.child,
    this.alignment = Alignment.center,
    this.curve = Curves.linear,
  });

  final Alignment alignment;
  final Curve curve;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      alignment: alignment,
      scale: CurvedAnimation(
        parent: animation,
        curve: Interval(
          0.00,
          0.50,
          curve: curve,
        ),
      ),
      child: child,
    );
  }
}
