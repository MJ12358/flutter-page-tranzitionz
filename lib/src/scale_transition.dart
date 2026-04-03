part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.ScaleTranzition}
/// A page transition that scales the new page in.
/// {@endtemplate}
@optionalTypeArgs
class ScaleTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ScaleTranzition({
    required super.child,
    this.alignment = Alignment.center,
    this.curve = _defaultCurve,
  });

  /// The alignment of the new page.
  final Alignment alignment;

  /// The curve of the transition.
  final Curve curve;

  static const Curve _defaultCurve = Curves.linear;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the bottom center.
  ScaleTranzition.bottomCenter({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.bottomCenter;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the bottom left.
  ScaleTranzition.bottomLeft({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.bottomLeft;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the bottom right.
  ScaleTranzition.bottomRight({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.bottomRight;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the center left.
  ScaleTranzition.centerLeft({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.centerLeft;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the center right.
  ScaleTranzition.centerRight({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.centerRight;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the top center.
  ScaleTranzition.topCenter({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.topCenter;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the top left.
  ScaleTranzition.topLeft({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.topLeft;

  /// {@macro flutter_page_tranzitionz.ScaleTranzition}
  ///
  /// The new page will scale in from the top right.
  ScaleTranzition.topRight({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.topRight;

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
        curve: curve,
      ),
      child: child,
    );
  }
}
