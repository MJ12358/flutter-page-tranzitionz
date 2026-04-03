part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.SizeTranzition}
/// A page transition that sizes the new page in.
/// {@endtemplate}
@optionalTypeArgs
class SizeTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.SizeTranzition}
  SizeTranzition({
    required super.child,
    this.alignment = Alignment.center,
    this.curve = _defaultCurve,
  });

  /// The alignment of the new page.
  final Alignment alignment;

  /// The curve of the transition.
  final Curve curve;

  static const Curve _defaultCurve = Curves.linear;

  /// {@macro flutter_page_tranzitionz.SizeTranzition}
  ///
  /// The new page will size in from the bottom.
  SizeTranzition.bottom({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.bottomCenter;

  /// {@macro flutter_page_tranzitionz.SizeTranzition}
  ///
  /// The new page will size in from the top.
  SizeTranzition.top({
    required super.child,
    this.curve = _defaultCurve,
  }) : alignment = Alignment.topCenter;
  
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
        child: child,
      ),
    );
  }
}
