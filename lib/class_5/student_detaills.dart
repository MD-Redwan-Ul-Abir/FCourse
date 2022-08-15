import 'package:flutter/material.dart';

import '../model/my_student.dart';

class StudentDetails extends StatefulWidget {
  final int id;

  const StudentDetails({Key? key, required this.id}) : super(key: key);

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {

  List<StudentModel> myStudentList=[
    StudentModel(
        id: 1,
        studentId: 644,
        studentName: "Sazid",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 2,
        studentId: 655,
        studentName: "Tufiq",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 3,
        studentId: 645,
        studentName: "Mosarof",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 4,
        studentId: 653,
        studentName: "Rejwan",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 5,
        studentId: 661,
        studentName: "Jannatul",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 6,
        studentId: 660,
        studentName: "Redwan",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 7,
        studentId: 3013,
        studentName: "Tarek",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
    StudentModel(
        id: 8,
        studentId: 3027,
        studentName: "Fahima",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage: "https://creazilla-store.fra1.digitaloceanspaces.com/emojis/50941/woman-student-emoji-clipart-md.png"
    ),
    StudentModel(
        id: 9,
        studentId: 1911,
        studentName: "Sheble",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Complete",
        active: false,
        profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final induvisualInfo= myStudentList.firstWhere((element) => element.id==widget.id);
    return Scaffold(
      appBar: AppBar(
        title: Text("StudentDetails ${widget.id}"),
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 100,
            child: Image.network(induvisualInfo.profileImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              width: 400,
              child: Card(
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  color: Colors.blue.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Student Id:  ${induvisualInfo.studentId}"),
                         Text("Student Name: ${induvisualInfo.studentName}"),
                         Text("Student Type : ${induvisualInfo.type}"),
                         Text("Student Father Name:  ${induvisualInfo.studentFname}"),
                         Text("Student Mother Name: ${induvisualInfo.studentMname}"),
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
