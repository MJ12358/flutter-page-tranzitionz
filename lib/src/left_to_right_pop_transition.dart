import 'package:flutter/widgets.dart';
import 'package:flutter_page_transitionz/flutter_page_transitionz.dart';

class LeftToRightPopTransition<T> extends PageTransition<T> {
  LeftToRightPopTransition({
    required super.child,
    required this.currentChild,
    this.curve = Curves.linear,
  });

  final Widget currentChild;
  final Curve curve;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Stack(
      children: <Widget>[
        child,
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(-1.0, 0.0),
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: curve,
            ),
          ),
          child: currentChild,
        ),
      ],
    );
  }
}
