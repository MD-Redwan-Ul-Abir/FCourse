import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/class_7/edit_student.dart';
import 'package:untitled/model/my_student.dart';
import 'package:untitled/providers/student_prodvider.dart';

class StudentDetails extends StatefulWidget {
  final int id;

  const StudentDetails({Key? key, required this.id}) : super(key: key);

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    final studentData = Provider.of<StudentProvider>(context);

    final induvisualInfo =
        studentData.getStudentById(widget.id) ?? StudentModel();
    return Scaffold(
      appBar: AppBar(
        title: Text("StudentDetails ${widget.id}"),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Edit Student"),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(Icons.close))
                          ],
                        ),
                        content: EditStudentDetials(
                          id: widget.id,
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.edit))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 100,
            child: Image.network(induvisualInfo.profileImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              child: Card(
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: Colors.blue.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Student Id:  ${induvisualInfo.studentId}"),
                        Text("Student Name: ${induvisualInfo.studentName}"),
                        Text("Student Type : ${induvisualInfo.type}"),
                        Text(
                            "Student Father Name:  ${induvisualInfo.studentFname}"),
                        Text(
                            "Student Mother Name: ${induvisualInfo.studentMname}"),
                        Text("Student Address : ${induvisualInfo.address}"),
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
