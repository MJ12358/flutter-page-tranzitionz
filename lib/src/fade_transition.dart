part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.FadeTranzition}
/// A page transition that fades the new page in and out.
/// {@endtemplate}
@optionalTypeArgs
class FadeTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.FadeTranzition}
  FadeTranzition({
    required super.child,
    this.offset,
  });

  /// The offset of the new page.
  /// If null, the new page will fade in and out without sliding.
  final Offset? offset;

  /// The position of the new page.
  Tween<Offset>? get _position {
    if (offset == null) {
      return null;
    }
    return Tween<Offset>(
      begin: offset,
      end: Offset.zero,
    );
  }

  /// {@macro flutter_page_tranzitionz.FadeTranzition}
  ///
  /// The new page will slide in from the bottom and fade in.
  FadeTranzition.bottomToTop({
    required super.child,
  }) : offset = const Offset(0.0, 1.0);

  /// {@macro flutter_page_tranzitionz.FadeTranzition}
  ///
  /// The new page will slide in from the left and fade in.
  FadeTranzition.leftToRight({
    required super.child,
  }) : offset = const Offset(-1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.FadeTranzition}
  ///
  /// The new page will slide in from the right and fade in.
  FadeTranzition.rightToLeft({
    required super.child,
  }) : offset = const Offset(1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.FadeTranzition}
  ///
  /// The new page will slide in from the top and fade in.
  FadeTranzition.topToBottom({
    required super.child,
  }) : offset = const Offset(0.0, -1.0);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (_position == null) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    }
    return SlideTransition(
      position: _position!.animate(animation),
      child: FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: _position!.animate(animation),
          child: child,
        ),
      ),
    );
  }
}
