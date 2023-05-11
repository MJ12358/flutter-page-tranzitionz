part of flutter_page_tranzitionz;

@optionalTypeArgs
class TopToBottomFadeTranzition<T> extends PageTranzition<T> {
  TopToBottomFadeTranzition({
    required super.child,
  });

  final Tween<Offset> _position = Tween<Offset>(
    begin: const Offset(0.0, -1.0),
    end: Offset.zero,
  );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: _position.animate(animation),
      child: FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: _position.animate(animation),
          child: child,
        ),
      ),
    );
  }
}
