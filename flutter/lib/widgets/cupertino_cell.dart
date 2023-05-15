import 'package:flutter/material.dart';
import 'package:swiftui_flutter/widgets/cupertino_tap_effect.dart';

class CupertinoCell extends StatelessWidget {
  const CupertinoCell({
    super.key,
    required this.child,
    this.onTap,
    this.minHeight = 44,
    this.horizontalMargin = 15,
  });

  final Widget child;
  final VoidCallback? onTap;
  final double minHeight;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    final body = SafeArea(
      top: false,
      bottom: false,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: minHeight),
        child: Padding(
          padding: EdgeInsets.only(left: horizontalMargin),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
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
    );
    return onTap == null
        ? body
        : CupertinoTapEffect(
            onTap: onTap,
            child: body,
          );
  }
}
