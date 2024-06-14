import 'package:ecommerce_app/cart.dart';
import 'package:ecommerce_app/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/provider/provider.dart'; // Import your ItemsProvider class
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item item;

  ItemDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Item Details'), actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CartPage()));
          }, icon: Icon(Icons.shopping_cart))
      ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  child: Container(
                    width: screenwidth,
                    height: 330,
                    color: Colors.blueAccent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(item.text,
                  style: GoogleFonts.lato(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: screenwidth,
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.text,
                              style: GoogleFonts.lato(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "₹ ${item.price}",
                              style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${item.offerprice}% Off',
                              style: GoogleFonts.lato(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.blue),
                              ),
                              onPressed: () {
                                Provider.of<ItemsProvider>(context,
                                    listen: false)
                                    .addItemToCart(item);

                              },
                              child: Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width, // Set width to match screen width
                            child: Text(
                              item.description,
                              maxLines: 15, // Limit the text to 10 lines
                              overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
