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
                  color: yellow,
                  width: 3,
                ),
                insets: EdgeInsets.symmetric(
                    horizontal: 16),
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
                itemCount: value.dairyitems.length,
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    itemName: value.fruisitems[index][1],
                    itemPrice: value.fruisitems[index][2],
                    imagePath: value.fruisitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .FaddItemToCart(index);
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
                    itemName: value.vegetableitems[index][1],
                    itemPrice: value.vegetableitems[index][2],
                    imagePath: value.vegetableitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .VaddItemToCart(index);
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
                    itemName: value.bakeryitems[index][1],
                    itemPrice: value.bakeryitems[index][2],
                    imagePath: value.bakeryitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .BaddItemToCart(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: const [
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
                    itemName: value.dairyitems[index][1],
                    itemPrice: value.dairyitems[index][2],
                    imagePath: value.dairyitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .DaddItemToCart(index);
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
                    itemName: value.frozenitems[index][1],
                    itemPrice: value.frozenitems[index][2],
                    imagePath: value.frozenitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .FraddItemToCart(index);
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
                    itemName: value.snacksitems[index][1],
                    itemPrice: value.snacksitems[index][2],
                    imagePath: value.snacksitems[index][0],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .SaddItemToCart(index);
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
