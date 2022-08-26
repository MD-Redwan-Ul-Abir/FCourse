// import 'package:flutter/material.dart';
// import 'package:untitled/class_5/list.dart';
// import 'package:untitled/model/my_student.dart';
//
// class FlexiableView extends StatefulWidget {
//   const FlexiableView({Key? key}) : super(key: key);
//
//   @override
//   State<FlexiableView> createState() => _FlexiableViewState();
// }
//
// class _FlexiableViewState extends State<FlexiableView> {
// TextEditingController studentId=TextEditingController();
// TextEditingController studentName=TextEditingController();
// TextEditingController studentType=TextEditingController();
// TextEditingController studentAddress=TextEditingController();
// TextEditingController studentFatherName=TextEditingController();
// TextEditingController studentMotherName=TextEditingController();
//
// final ListViewAndGridView listViewAndGridView= ListViewAndGridView();
//
// bool ? isChecked;
// bool  isCheckedList=false;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flexiable View"),
//
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 60,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Flexible(
//                       flex: 1,
//                       child: TextFormField(
//                         controller: studentId,
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             hintText: "Student Id",
//                             label: Text("Student Id")
//                         ),
//
//
//                       )),
//                   SizedBox(width: 5,),
//                   Flexible(
//                       flex:1,
//                       child: TextFormField(
//                         controller: studentName,
//                         decoration: InputDecoration(
//
//                             border: OutlineInputBorder(),
//                             hintText: "Student Name",
//                             label: Text("Student Name")
//                         ),
//
//
//                       )),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Flexible(child: TextFormField(
//                     controller: studentType,
//                     decoration: InputDecoration(
//
//                         border: OutlineInputBorder(),
//                         hintText: "Student Type",
//                         label: Text("Student Type")
//                     ),
//
//
//                   )),
//                   SizedBox(width: 5,),
//
//                   Flexible(child: TextFormField(
//                     controller: studentAddress,
//                     decoration: InputDecoration(
//
//                         border: OutlineInputBorder(),
//                         hintText: "Student Address",
//                         label: Text("Student Address")
//                     ),
//
//
//                   )),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Flexible(child: TextFormField(
//                     controller: studentFatherName,
//                     decoration: InputDecoration(
//
//                         border: OutlineInputBorder(),
//                         hintText: "Student Father Name",
//                         label: Text("Student Father Name")
//                     ),
//
//
//                   )),
//                   SizedBox(width: 5,),
//
//                   Flexible(child: TextFormField(
//                     controller: studentMotherName,
//                     decoration: InputDecoration(
//
//                         border: OutlineInputBorder(),
//                         hintText: "Student Mother Name",
//                         label: Text("Student Mother Name")
//                     ),
//
//
//                   )),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.grey.shade300,
//               child: Column(
//                 children: [
//                   Text("Student Id:${studentId.text}"),
//                   Text("Student Name: ${studentName.text}"),
//                   Text("Student Type : ${studentType.text}"),
//                   Text("Student Father Name:  ${studentAddress.text}"),
//                   Text("Student Mother Name: ${studentFatherName.text}"),
//                   Text("Student Address : ${studentMotherName.text}"),
//                 ],
//               ),
//             ),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 listViewAndGridView.createState().myStudentList.add(StudentModel(
//                   studentId: int.parse(studentId.text),
//                   studentName: studentName.text,
//                   type: studentType.text,
//                   address: studentType.text,
//                   studentFname: studentFatherName.text,
//                   studentMname: studentFatherName.text,
//                   active: true,
//                   profileImage: "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"
//                 ));
//               });
//               print(listViewAndGridView.createState().myStudentList.length);
//             }, child: Text("Add Info")),
//
//             Checkbox(value:isChecked , onChanged: (value){
//               setState(() {
//                 isChecked=value;
//               });
//             }),
//             // CheckboxListTile(value: false, onChanged: (value){
//             //   setState(() {
//             //     isCheckedList=value!;
//             //   });
//             //
//             // },
//             //
//             // title: Text("RemeberMe"),
//             // ),
//         CheckboxListTile(
//           value: isChecked,
//           onChanged: (bool? newValue) {
//             setState(() {
//               isChecked = newValue;
//             });
//           },
//           title: Text('Throw away your shot'),
//
//         )],
//         ),
//       )
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    bool isTrue=false;
    return Scaffold(
      appBar: AppBar(),
      body: CheckboxListTile(
        title: const Text('Animate Slowly'),
        // value: timeDilation != 1.0,
        value: isTrue,
        onChanged: (bool? value) {
          // setState(() {
          //   timeDilation = value! ? 10.0 : 1.0;
          // });
          setState(() {
            isTrue=value!;
          });

          print("sgsg:${value!}");
          print("www:${isTrue}");


        },
        secondary: const Icon(Icons.hourglass_empty),
      ),
    );
  }
}

