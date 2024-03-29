part of flutter_page_tranzitionz;

@optionalTypeArgs
class RotateTranzition<T> extends PageTranzition<T> {
  RotateTranzition({
    required super.child,
    this.alignment = Alignment.center,
  });

  final Alignment alignment;

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
