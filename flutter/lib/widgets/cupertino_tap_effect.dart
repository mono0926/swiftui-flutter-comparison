import 'package:flutter/cupertino.dart';
import 'package:route_observer_mixin/route_observer_mixin.dart';

class CupertinoTapEffect extends StatefulWidget {
  const CupertinoTapEffect({
    super.key,
    required this.child,
    required this.onTap,
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  State<CupertinoTapEffect> createState() => _CupertinoTapEffectState();
}

class _CupertinoTapEffectState extends State<CupertinoTapEffect>
    with RouteAware, RouteObserverMixin {
  bool _isHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => setState(() => _isHighlighted = true),
      onTapCancel: () => setState(() => _isHighlighted = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        color: _isHighlighted
            ? const Color(0xFFD1D1D6)
            : CupertinoTheme.of(context).scaffoldBackgroundColor,
        child: widget.child,
      ),
    );
  }

  @override
  void didPopNext() {
    super.didPopNext();

    if (_isHighlighted) {
      Future<dynamic>.delayed(const Duration(milliseconds: 200))
          .then<dynamic>((dynamic _) {
        setState(() => _isHighlighted = false);
      });
    }
  }
}
