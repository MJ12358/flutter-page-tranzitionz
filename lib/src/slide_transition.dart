part of flutter_page_tranzitionz;

/// {@template flutter_page_tranzitionz.SlideTranzition}
/// A page transition that slides the new page in from a specified offset.
/// {@endtemplate}
@optionalTypeArgs
class SlideTranzition<T> extends PageTranzition<T> {
  /// {@macro flutter_page_tranzitionz.SlideTranzition}
  SlideTranzition({
    required super.child,
    required this.offset,
  });

  /// The offset of the new page.
  final Offset offset;

  /// {@macro flutter_page_tranzitionz.SlideTranzition}
  ///
  /// The new page will slide in from the bottom.
  SlideTranzition.bottomToTop({
    required super.child,
  }) : offset = const Offset(0.0, 1.0);

  /// {@macro flutter_page_tranzitionz.SlideTranzition}
  ///
  /// The new page will slide in from the left.
  SlideTranzition.leftToRight({
    required super.child,
  }) : offset = const Offset(-1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.SlideTranzition}
  ///
  /// The new page will slide in from the right.
  SlideTranzition.rightToLeft({
    required super.child,
  }) : offset = const Offset(1.0, 0.0);

  /// {@macro flutter_page_tranzitionz.SlideTranzition}
  ///
  /// The new page will slide in from the top.
  SlideTranzition.topToBottom({
    required super.child,
  }) : offset = const Offset(0.0, -1.0);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: offset,
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
