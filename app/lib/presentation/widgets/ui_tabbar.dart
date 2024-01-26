import 'package:flutter/material.dart';

class UITabbar extends StatefulWidget {
  const UITabbar({
    super.key,
    this.tabs,
    this.tabViews,
  });

  final List<Widget>? tabs;
  final List<Widget>? tabViews;

  @override
  State<UITabbar> createState() => _UITabbarState();
}

class _UITabbarState extends State<UITabbar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabs?.length ?? 0,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs?.length ?? 0,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: widget.tabs ?? [],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: widget.tabViews ?? [],
            ),
          ),
        ],
      ),
    );
  }
}
