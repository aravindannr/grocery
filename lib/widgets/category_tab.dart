import 'package:flutter/material.dart';
import 'package:grocery/constant.dart';
import 'package:grocery/widgets/catergory/dairy.dart';
import 'package:grocery/widgets/catergory/frozen.dart';
import 'package:grocery/widgets/catergory/snacks.dart';
import 'package:grocery/widgets/catergory/vegetables.dart';
import 'catergory/bakery.dart';
import 'catergory/fruits.dart';

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
          child: DefaultTabController(
            length: items.length,
            child: TabBar(
              controller: _tabController,
              indicator:UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: yellow, // Customize the indicator color
                  width: 3, // Customize the indicator thickness
                ),
                insets: EdgeInsets.symmetric(horizontal: 16), // Customize the indicator padding
              ),
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
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return FruitsItem(index);
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return VegetableItem(index);
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return BakeryItem(index);
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return DairyItems(index);
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return FrozenItem(index);
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return Snack_Item(index);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
