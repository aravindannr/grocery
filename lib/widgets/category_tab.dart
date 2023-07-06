import 'package:flutter/material.dart';

import 'package:grocery/widgets/slivergrid.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  _ItemsTabState createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab>
    with SingleTickerProviderStateMixin {
  List<String> items = [
    "Fruits",
    "Vegetables",
    "Bakery",
    "Dairy",
    "Frozen",
    "Snacks",
  ];

  late TabController _tabController;
  int current = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.deepPurpleAccent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: items.map((item) => Text(item)).toList(),
            onTap: (index) {
              setState(() {
                current = index;
              });
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Grid_sliver(),
              Grid_sliver(),
              Grid_sliver(),
              Grid_sliver(),
              Grid_sliver(),
              Grid_sliver(),
            ],
          ),
        ),
      ],
    );
  }
}
