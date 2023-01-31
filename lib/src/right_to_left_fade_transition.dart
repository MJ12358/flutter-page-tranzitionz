import 'package:flutter/widgets.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

class RightToLeftFadeTranzition extends PageTranzition {
  RightToLeftFadeTranzition({
    required super.child,
  });

  final Tween<Offset> _position = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: Offset.zero,
  );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: _position.animate(animation),
      child: FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: _position.animate(animation),
          child: child,
        ),
      ),
    );
  }
}
