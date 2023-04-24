part of flutter_page_tranzitionz;

class TopToBottomJoinTranzition extends PageTranzition {
  TopToBottomJoinTranzition({
    required super.child,
    required this.currentChild,
    this.curve = Curves.linear,
  });

  final Widget currentChild;
  final Curve curve;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Stack(
      children: <Widget>[
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, -1.0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: curve,
            ),
          ),
          child: child,
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(0.0, 1.0),
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: curve,
            ),
          ),
          child: currentChild,
        ),
      ],
    );
  }
}
