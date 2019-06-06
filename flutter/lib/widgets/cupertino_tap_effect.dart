import 'package:flutter/cupertino.dart';
import 'package:mono_kit/mono_kit.dart';

class CupertinoTapEffect extends StatefulWidget {
  const CupertinoTapEffect({
    Key key,
    @required this.child,
    @required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;

  @override
  _CupertinoTapEffectState createState() => _CupertinoTapEffectState();
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
        duration: Duration(milliseconds: 100),
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
      Future<dynamic>.delayed(Duration(milliseconds: 200))
          .then<dynamic>((dynamic _) {
        setState(() => _isHighlighted = false);
      });
    }
  }
}
