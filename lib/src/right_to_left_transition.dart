import 'package:flutter/widgets.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

class RightToLeftTranzition extends PageTranzition {
  RightToLeftTranzition({
    required super.child,
  });

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
