import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/class_5/list.dart';
import 'package:untitled/model/my_student.dart';
import 'package:untitled/providers/student_prodvider.dart';

class EditStudentDetials extends StatefulWidget {
  final int id;

  const EditStudentDetials({Key? key, required this.id}) : super(key: key);

  @override
  State<EditStudentDetials> createState() => _FlexiableViewState();
}

class _FlexiableViewState extends State<EditStudentDetials> {
  TextEditingController studentId = TextEditingController();
  TextEditingController studentName = TextEditingController();
  TextEditingController studentType = TextEditingController();
  TextEditingController studentAddress = TextEditingController();
  TextEditingController studentFatherName = TextEditingController();
  TextEditingController studentMotherName = TextEditingController();
  bool? isChecked;
  @override
  void initState() {
    // TODO: implement initState
    final studentData = Provider.of<StudentProvider>(context, listen: false);

    final induvisualInfo =
        studentData.getStudentById(widget.id) ?? StudentModel();
    studentId.text = induvisualInfo.studentId.toString();
    studentName.text = induvisualInfo.studentName;
    studentType.text = induvisualInfo.type;
    studentAddress.text = induvisualInfo.address;
    studentFatherName.text = induvisualInfo.studentFname;
    studentMotherName.text = induvisualInfo.studentMname;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final studentData = Provider.of<StudentProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: studentId,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Id",
                label: Text("Student Id")),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: studentName,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Name",
                label: Text("Student Name")),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: studentType,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Type",
                label: Text("Student Type")),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: studentAddress,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Address",
                label: Text("Student Address")),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: studentFatherName,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Father Name",
                label: Text("Student Father Name")),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: studentMotherName,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Mother Name",
                label: Text("Student Mother Name")),
          ),
          const SizedBox(
            height: 20,
          ),
          // Container(
          //   color: Colors.grey.shade300,
          //   child: Column(
          //     children: [
          //       Text("Student Id:${studentId.text}"),
          //       Text("Student Name: ${studentName.text}"),
          //       Text("Student Type : ${studentType.text}"),
          //       Text("Student Father Name:  ${studentAddress.text}"),
          //       Text("Student Mother Name: ${studentFatherName.text}"),
          //       Text("Student Address : ${studentMotherName.text}"),
          //     ],
          //   ),
          // ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  studentData
                      .updateStudentInfo(
                          id: widget.id,
                          studentName: studentName.text,
                          studentId: int.parse(studentId.text),
                          studentType: studentType.text,
                          studentFatherName: studentFatherName.text,
                          studentMotherName: studentMotherName.text,
                          active: true,
                          address: studentAddress.text)
                      .then(
                    (value) {
                      final snackBar = const SnackBar(
                        content: Text('Yay!  Data Updated!'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.of(context).pop();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ListViewAndGridView()));
                    },
                  );
                });
              },
              child: const Text("Update Info")),
          // Checkbox(
          //     value: isChecked,
          //     onChanged: (value) {
          //       setState(() {
          //         isChecked = value;
          //       });
          //     }),
        ],
      ),
    );
  }
}
