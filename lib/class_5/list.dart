import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/class_5/student_detaills.dart';
import 'package:untitled/class_6/flexiable.dart';
import 'package:untitled/providers/product_provider.dart';
import 'package:untitled/providers/student_prodvider.dart';

class ListViewAndGridView extends StatefulWidget {
  const ListViewAndGridView({Key? key}) : super(key: key);

  @override
  _ListViewAndGridViewState createState() => _ListViewAndGridViewState();
}

class _ListViewAndGridViewState extends State<ListViewAndGridView> {
  bool isListView = true;

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProductProvider>(context, listen: false).getProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final studentData = Provider.of<StudentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("List And Grid View"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isListView ? isListView = false : isListView = true;
              });
            },
            icon: Icon(isListView ? Icons.grid_view : Icons.list_alt),
            iconSize: 30,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlexiableView()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: isListView
          ? ListView.builder(
              itemCount: studentData.myStudentList.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentDetails(
                                  id: studentData.myStudentList[index].id)));
                    },
                    child: GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Container(
                                  height: 300,
                                  child: Column(
                                    children: [
                                      Text(
                                          "Do you want to delete the student(${studentData.myStudentList[index].studentName})?"),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("No")),
                                          ElevatedButton(
                                              onPressed: () {
                                                studentData
                                                    .deleteStudent(studentData
                                                        .myStudentList[index]
                                                        .id)
                                                    .then((value) {
                                                  final snackBar =
                                                      const SnackBar(
                                                    content:
                                                        Text('Data deleted!'),
                                                  );

                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                  Navigator.of(context).pop();
                                                });
                                              },
                                              child: Text("Yes")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Card(
                          elevation: 10,
                          shadowColor: Colors.black38,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          color: Colors.blue.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade100,
                                  child: ClipOval(
                                      child: Image.network(
                                    studentData
                                        .myStudentList[index].profileImage,
                                    fit: BoxFit.cover,
                                  )),
                                  radius: 45,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Student Id:  ${studentData.myStudentList[index].studentId}"),
                                    Text(
                                        "Student Name: ${studentData.myStudentList[index].studentName}"),
                                    Text(
                                        "Student Type : ${studentData.myStudentList[index].type}"),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                );
              },
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentDetails(
                                  id: studentData.myStudentList[index].id)));
                    },
                    child: Card(
                        elevation: 10,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        color: Colors.blue.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade100,
                                child: ClipOval(
                                    child: Image.network(
                                  studentData.myStudentList[index].profileImage,
                                  fit: BoxFit.cover,
                                )),
                                radius: 45,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Student Id:  ${studentData.myStudentList[index].studentId}"),
                                  Text(
                                      "Student Name: ${studentData.myStudentList[index].studentName}"),
                                  Text(
                                      "Student Type : ${studentData.myStudentList[index].type}"),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                );
              },
              itemCount: studentData.myStudentList.length,
            ),
    );
  }
}
