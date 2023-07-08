import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/bottomBar.dart';
import 'package:provider/provider.dart';

import '../model/cartModel.dart';
import '../utils/colorConstant/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: brown,
          title: Text(
            " My cart",
            style: GoogleFonts.notoSerif(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(14))),
          elevation: 16,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: blue,
              size: 25,
            ),
          ),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      itemCount: value.cartItems.length,
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: ListTile(
                              leading: Image.asset(
                                value.cartItems[index][0],
                                height: 36,
                                fit: BoxFit.contain,
                              ),
                              title: Text(
                                value.cartItems[index][1],
                                style: const TextStyle(fontSize: 18),
                              ),
                              subtitle: Text(
                                '\$' + value.cartItems[index][2],
                                style: const TextStyle(fontSize: 12),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () => Provider.of<CartModel>(context,
                                        listen: false)
                                    .removeItemFromCart(index),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(color: Colors.green[200]),
                            ),

                            const SizedBox(height: 8),
                            // total price
                            Text(
                              '\u20B9${value.calculateTotal()}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {  },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green.shade200),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: const [
                                Text(
                                  'Pay Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
        bottomNavigationBar: BottomNavBar(),
    );
  }
}
