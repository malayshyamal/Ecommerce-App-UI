// Assuming the images are in the 'images' directory in the root of your project
// Make sure the actual image paths are correct

import 'package:ecommerce_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_app/provider/data.dart';
import 'package:ecommerce_app/provider/provider.dart';

import 'cart.dart';
import 'detailsPage.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 150,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_box),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                  Text("Home"),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    icon: Icon(Icons.shopping_cart),
                  )
                ],
              ),
              Card(
                elevation: 2,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    hintText: 'search...',
                    prefixIcon: Icon(Icons.search, color: Colors.lightBlueAccent,),
                    suffixIcon: Icon(Icons.mic, color: Colors.lightBlueAccent),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height, // Set the height of the container
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
                        borderRadius: BorderRadius.circular(10), // Set border radius
                        child: Image.asset('images/img6.jpg', fit: BoxFit.fill), // Assuming this is the correct path
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Recommended for you',
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Consumer<ItemsProvider>(
                    builder: (context, itemprovider, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal, // Set horizontal scroll direction
                        itemCount: itemprovider.items.length,
                        itemBuilder: (context, index) {
                          final item = itemprovider.items[index];
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailsPage(item: item,)));

                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                elevation: 4,
                                color: Colors.white,
                                child: Container(
                                  width: 120,
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(item.image, fit: BoxFit.fill,height: screenheight/9,),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(item.text),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₹ ${item.price}", style: GoogleFonts.lato(fontSize: 17,color: Colors.blue, fontWeight: FontWeight.bold),),
                                          Text('${item.offerprice}% Off', style: GoogleFonts.lato(color: Colors.pink, fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      Text('in Stock')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Text('Past Order',style: GoogleFonts.lato(fontWeight: FontWeight.bold) ),
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Consumer<ItemsProvider>(
                    builder: (context, itemprovider, child) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical, // Set horizontal scroll direction
                        itemCount: itemprovider.items.length,
                        itemBuilder: (context, index) {
                          final item = itemprovider.items[index];
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailsPage(item: item,)));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Card(
                                elevation: 4,
                                color: Colors.white,
                                child: Container(
                                  width: screenwidth,
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(item.image, fit: BoxFit.fill,height: screenheight/6,),
                                      ),
                                      SizedBox(width: 30,),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(item.text, style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),),
                                          Text("₹ ${item.price}", style: GoogleFonts.lato(fontSize: 17,color: Colors.blue, fontWeight: FontWeight.bold),),
                                          Text('${item.offerprice}% Off', style: GoogleFonts.lato(color: Colors.pink, fontWeight: FontWeight.bold),),
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set background color
                                              ),
                                              onPressed: (){
                                                Provider.of<ItemsProvider>(context, listen: false).addItemToCart(item);

                                              }, child: Text("Add", style: TextStyle(color: Colors.white),))
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
