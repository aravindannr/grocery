import 'package:flutter/material.dart';
import 'package:grocery/model/cartModel.dart';
import 'package:grocery/utils/colorConstant/colors.dart';
import 'package:provider/provider.dart';
import 'gridTile.dart';

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
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: yellow, // Customize the indicator color
                  width: 3, // Customize the indicator thickness
                ),
                insets: EdgeInsets.symmetric(
                    horizontal: 16), // Customize the indicator padding
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
        Expanded(child: Consumer<CartModel>(builder: (context, value, child) {
          return TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.2,
                ),
                itemCount: value.items.length,
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                  ;
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.items[index][1],
                    itemPrice: value.items[index][2],
                    imagePath: value.items[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.shopping_cart),
                              SizedBox(width: 8),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.blueGrey,
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .undoLastItem();
                            },
                            textColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          );
        })),
      ],
    );
  }
}
