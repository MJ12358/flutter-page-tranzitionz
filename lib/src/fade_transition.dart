part of flutter_page_tranzitionz;

@optionalTypeArgs
class FadeTranzition<T> extends PageTranzition<T> {
  FadeTranzition({
    required super.child,
  });

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
