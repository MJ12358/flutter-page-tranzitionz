part of flutter_page_tranzitionz;

@optionalTypeArgs
class LeftToRightFadeTranzition<T> extends PageTranzition<T> {
  LeftToRightFadeTranzition({
    required super.child,
  });

  final Tween<Offset> _position = Tween<Offset>(
    begin: const Offset(-1.0, 0.0),
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
