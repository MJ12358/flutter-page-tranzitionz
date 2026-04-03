part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.JoinTranzition}
/// A page transition that joins the current page and the new page.
/// {@endtemplate}
@optionalTypeArgs
class JoinTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.JoinTranzition}
  JoinTranzition({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
    required this.newPosition,
    required this.currentPosition,
  });

  /// The current page.
  final Widget currentChild;

  /// The curve of the transition.
  final Curve curve;

  /// The position of the new page.
  final Tween<Offset> newPosition;

  /// The position of the current page.
  final Tween<Offset> currentPosition;

  static const Curve _defaultCurve = Curves.linear;

  /// {@macro flutter_page_tranzitionz.JoinTranzition}
  ///
  /// The new page will slide in from the bottom,
  /// while the current page will slide out to the top.
  JoinTranzition.bottomToTop({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  })  : newPosition = Tween<Offset>(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ),
        currentPosition = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, -1.0),
        );

  /// {@macro flutter_page_tranzitionz.JoinTranzition}
  ///
  /// The new page will slide in from the left,
  /// while the current page will slide out to the right.
  JoinTranzition.leftToRight({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  })  : newPosition = Tween<Offset>(
          begin: const Offset(-1.0, 0.0),
          end: Offset.zero,
        ),
        currentPosition = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0.0),
        );

  /// {@macro flutter_page_tranzitionz.JoinTranzition}
  ///
  /// The new page will slide in from the right,
  /// while the current page will slide out to the left.
  JoinTranzition.rightToLeft({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  })  : newPosition = Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ),
        currentPosition = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(-1.0, 0.0),
        );

  /// {@macro flutter_page_tranzitionz.JoinTranzition}
  ///
  /// The new page will slide in from the top,
  /// while the current page will slide out to the bottom.
  JoinTranzition.topToBottom({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  })  : newPosition = Tween<Offset>(
          begin: const Offset(0.0, -1.0),
          end: Offset.zero,
        ),
        currentPosition = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, 1.0),
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Stack(
      children: <Widget>[
        SlideTransition(
          position: newPosition.animate(
            CurvedAnimation(
              parent: animation,
              curve: curve,
            ),
          ),
          child: child,
        ),
        SlideTransition(
          position: currentPosition.animate(
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
