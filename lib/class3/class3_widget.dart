

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/class_5/list.dart';

class Class3HomePage extends StatefulWidget {
  const Class3HomePage({Key? key}) : super(key: key);

  @override
  State<Class3HomePage> createState() => _Class3HomePageState();
}

class _Class3HomePageState extends State<Class3HomePage> {
  final picker = ImagePicker();
  File? _fileFromGallary;
  File? _fileFromCamera;

  //Mobile Image upload
  _openCamera(BuildContext context) async {
    var pickedFile = await picker.getImage(preferredCameraDevice: CameraDevice.rear, source: ImageSource.camera);

    if (pickedFile == null) return;

    final file = File(pickedFile.path);
    final imageBytes = await file.readAsBytes();
    final filename = file.path;
    setState(() {
      _fileFromCamera=file;
    });

    Navigator.pop(context);
  }

  _openGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile == null) return;

    final file = File(pickedFile.path);
    final imageName = file.path;
    final imageBytes = await file.readAsBytes();
    setState(() {
      _fileFromGallary=file;
    });

    Navigator.pop(context);
  }

  Future<void> _showImageDialog(BuildContext context) {
    return showDialog(
        context: context,

        builder: (BuildContext context) {

          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Make a Choice'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Padding(padding: EdgeInsets.only(left: 6)),
                        Text('Camera')
                      ],
                    ),
                    onTap: () => _openCamera(context),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.open_in_browser),
                        Padding(padding: EdgeInsets.only(left: 6)),
                        Text('Images')
                      ],
                    ),
                    onTap: () => _openGallery(context),
                  )
                ],
              ),
            ),
          );

        });
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 500.0,
            color: Colors.transparent,
            //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child:Card(
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
                        Image.asset("assets/images/Iphone13.jpg",
                            height: 100,
                            width: 180,
                            fit: BoxFit.cover),
                        // Image.network("https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80",

                        Text("Product Name: Sun-Glass"),
                        Text("Product Price: 250"),
                        Text("Product SKU: Sun-Glass001"),
                      ],
                    ),
                  )),
            ),
          );
        }
    );
  }

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
                            Image.asset("assets/images/Iphone13.jpg",
                                height: 100,
                                width: 180,
                                fit: BoxFit.cover),
                            // Image.network("https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80",

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
                            Image.asset("assets/images/Iphone12.jpg",
                                height: 100,
                                width: 180,
                                fit: BoxFit.cover),
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
                           _fileFromGallary==null?Image.network("https://media.istockphoto.com/id/922962354/vector/no-image-available-sign.webp?s=612x612&w=is&k=20&c=-AcMr-ohOEGAxA9-K1ESqVYePXQbtR7Lq1tZqpfO9Vc=",
                              height: 100,
                              width: 180,
                              fit: BoxFit.cover,
                            ):Image.file(_fileFromGallary!, height: 100,
                               width: 180,
                               fit: BoxFit.cover),
                            Text("Product Name: Sun-Glass"),
                            Text("Product Price: 250"),
                            Text("Product SKU: Sun-Glass001"),
                          ],
                        ),
                      )),
                ),
                GestureDetector(
                  onLongPress: (){
                    _modalBottomSheetMenu();
                  },
                  child: Card(

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
                              _fileFromCamera==null?Image.network("https://media.istockphoto.com/id/922962354/vector/no-image-available-sign.webp?s=612x612&w=is&k=20&c=-AcMr-ohOEGAxA9-K1ESqVYePXQbtR7Lq1tZqpfO9Vc=",
                                height: 100,
                                width: 180,
                                fit: BoxFit.cover,
                              ):Image.file(_fileFromCamera!, height: 100,
                                  width: 180,
                                  fit: BoxFit.cover),
                              Text("Product Name: Sun-Glass"),
                              Text("Product Price: 250"),
                              Text("Product SKU: Sun-Glass001"),
                            ],
                          ),
                        )),
                  ),
                ),

              ],
            ),
            
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewAndGridView()));
            }, child: Text("Go to Next Page"))
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(

          onPressed: (){
            print("Hello i am botton");
            _showImageDialog(context);
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
