import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftui_flutter/pages/tutorial1/tutorial1_page.dart';

const double _horizontalMargin = 16;

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Flutter'),
      ),
      child: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const _ListItem();
        },
        separatorBuilder: (context, index) => const Divider(
              height: 0,
              indent: _horizontalMargin,
            ),
      ),
    );
  }
}

class _ListItem extends StatefulWidget {
  const _ListItem();

  @override
  __ListItemState createState() => __ListItemState();
}

class __ListItemState extends State<_ListItem> {
  bool _isHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // ignore: unawaited_futures
        Navigator.of(context).pushNamed(Tutorial1Page.routeName);
        await Future<dynamic>.delayed(Duration(seconds: 1));
        setState(() => _isHighlighted = false);
      },
      onTapDown: (_) => setState(() => _isHighlighted = true),
      onTapCancel: () => setState(() => _isHighlighted = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        color: _isHighlighted ? const Color(0xFFD1D1D6) : Colors.white,
        height: 44,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: _horizontalMargin),
            child: Row(
              children: [
                Expanded(
                    child: Text(Tutorial1Page.routeName.replaceAll('/', ''))),
                Icon(
                  CupertinoIcons.forward,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
