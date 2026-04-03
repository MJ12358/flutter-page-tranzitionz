part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.RotateTranzition}
/// A page transition that rotates the new page in.
/// {@endtemplate}
@optionalTypeArgs
class RotateTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  RotateTranzition({
    required super.child,
    this.alignment = Alignment.center,
  });

  /// The alignment of the new page.
  final Alignment alignment;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the bottom center.
  RotateTranzition.bottomCenter({
    required super.child,
  }) : alignment = Alignment.bottomCenter;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the bottom left.
  RotateTranzition.bottomLeft({
    required super.child,
  }) : alignment = Alignment.bottomLeft;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the bottom right.
  RotateTranzition.bottomRight({
    required super.child,
  }) : alignment = Alignment.bottomRight;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the center left.
  RotateTranzition.centerLeft({
    required super.child,
  }) : alignment = Alignment.centerLeft;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the center right.
  RotateTranzition.centerRight({
    required super.child,
  }) : alignment = Alignment.centerRight;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the top center.
  RotateTranzition.topCenter({
    required super.child,
  }) : alignment = Alignment.topCenter;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the top left.
  RotateTranzition.topLeft({
    required super.child,
  }) : alignment = Alignment.topLeft;

  /// {@macro flutter_page_tranzitionz.RotateTranzition}
  ///
  /// The new page will rotate in from the top right.
  RotateTranzition.topRight({
    required super.child,
  }) : alignment = Alignment.topRight;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: alignment,
      turns: animation,
      child: ScaleTransition(
        alignment: alignment,
        scale: animation,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }
}
