import 'package:flutter/cupertino.dart';
import 'package:swiftui_flutter/widgets/cupertino_tap_effect.dart';

class CupertinoCell extends StatelessWidget {
  const CupertinoCell({
    Key key,
    @required this.child,
    @required this.onTap,
    this.minHeight = 44,
    this.horizontalMargin = 15,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onTap;
  final double minHeight;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return CupertinoTapEffect(
      onTap: onTap,
      child: SafeArea(
        top: false,
        bottom: false,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: minHeight),
          child: Padding(
            padding: EdgeInsets.only(left: horizontalMargin),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color(0xFFBCBBC1),
                    width: 1 / MediaQuery.of(context).devicePixelRatio,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: horizontalMargin),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
