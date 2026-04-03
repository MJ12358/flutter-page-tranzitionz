part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.PopTranzition}
/// A page transition that pops the current page out
/// while the new page is pushed in.
/// The current page will slide out in the opposite
/// direction of the new page.
/// {@endtemplate}
@optionalTypeArgs
class PopTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.PopTranzition}
  PopTranzition({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
    required this.offset,
  });

  /// The current page.
  final Widget currentChild;

  /// The curve of the transition.
  final Curve curve;

  /// The offset of the new page.
  final Offset offset;

  static const Curve _defaultCurve = Curves.linear;

  /// {@macro flutter_page_tranzitionz.PopTranzition}
  ///
  /// The new page will slide in from the bottom,
  /// while the current page will slide out to the top.
  PopTranzition.bottomToTop({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  }) : offset = const Offset(0.0, -1.0);

  /// {@macro flutter_page_tranzitionz.PopTranzition}
  ///
  /// The new page will slide in from the left,
  /// while the current page will slide out to the right.
  PopTranzition.leftToRight({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  }) : offset = const Offset(1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.PopTranzition}
  ///
  /// The new page will slide in from the right,
  /// while the current page will slide out to the left.
  PopTranzition.rightToLeft({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  }) : offset = const Offset(-1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.PopTranzition}
  ///
  /// The new page will slide in from the top,
  /// while the current page will slide out to the bottom.
  PopTranzition.topToBottom({
    required super.child,
    required this.currentChild,
    this.curve = _defaultCurve,
  }) : offset = const Offset(0.0, 1.0);

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
            end: offset,
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
