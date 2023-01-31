import 'package:flutter/widgets.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

class FadeTranzition extends PageTranzition {
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
