import 'package:flutter/widgets.dart';
import 'package:flutter_page_tranzitionz/flutter_page_tranzitionz.dart';

class SizeTranzition<T> extends PageTranzition<T> {
  SizeTranzition({
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
    return Align(
      alignment: alignment,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
      ),
    );
  }
}
