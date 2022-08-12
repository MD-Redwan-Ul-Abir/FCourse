

import 'package:flutter/material.dart';

class Class3HomePage extends StatefulWidget {
  const Class3HomePage({Key? key}) : super(key: key);

  @override
  State<Class3HomePage> createState() => _Class3HomePageState();
}

class _Class3HomePageState extends State<Class3HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Class3HomePage",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
      ),
    ),
      ),
      body: Container(
        // height: 200,
        width: 500,
        height: 1000,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(
                      height: 200,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80",
                            height: 100,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text("Product Name: Sun-Glass"),
                            Text("Product Price: 250"),
                            Text("Product SKU: Sun-Glass001"),
                          ],
                        ),
                      )),
                ),
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(
                      height: 200,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80" ,height: 100,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text("Product Name: Sun-Glass"),
                            Text("Product Price: 250"),
                            Text("Product SKU: Sun-Glass001"),
                          ],
                        ),
                      )),
                ),

              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(
                      height: 200,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80",
                              height: 100,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text("Product Name: Sun-Glass"),
                            Text("Product Price: 250"),
                            Text("Product SKU: Sun-Glass001"),
                          ],
                        ),
                      )),
                ),
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(
                      height: 200,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80" ,height: 100,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text("Product Name: Sun-Glass"),
                            Text("Product Price: 250"),
                            Text("Product SKU: Sun-Glass001"),
                          ],
                        ),
                      )),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          

          onPressed: (){
            print("Hello i am botton");
          },
          child: Icon(Icons.shopping_cart),
          elevation: 30,
          splashColor: Colors.orange,
          backgroundColor: Colors.amberAccent,

        ),
      ),
    );
  }
}
