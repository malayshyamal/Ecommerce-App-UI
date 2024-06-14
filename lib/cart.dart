import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_app/provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: CartContent(),
    );
  }
}

class CartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartProviders = Provider.of<ItemsProvider>(context);
    var cartItems = cartProviders.cartItems;

    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        var cartItem = cartItems[index];
        return ListTile(
          title:  Text(cartItem.text, style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),),
          subtitle: Text("₹ ${cartItem.price}", style: GoogleFonts.lato(fontSize: 17,color: Colors.blue, fontWeight: FontWeight.bold),),
          leading: SizedBox(
            width: 150, // Adjust width as needed
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                cartItem.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: (){
              Provider.of<ItemsProvider>(context, listen: false).removeItemFromCart(cartItem);
            },icon: Icon(Icons.delete, color: Colors.redAccent,),

          ),
        );
      },
    );
  }
}
