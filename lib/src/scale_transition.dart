part of flutter_page_tranzitionz;

@optionalTypeArgs
class ScaleTranzition<T> extends PageTranzition<T> {
  ScaleTranzition({
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
