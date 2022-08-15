import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/class_5/student_detaills.dart';

import '../model/my_student.dart';

class ListViewAndGridView extends StatefulWidget {
  const ListViewAndGridView({Key? key}) : super(key: key);

  @override
  _ListViewAndGridViewState createState() => _ListViewAndGridViewState();
}

class _ListViewAndGridViewState extends State<ListViewAndGridView> {

  List<String> testList=["Sazid","Tofik","Tarek","Fahima","Mosarof","Redwan","Rejwan","Jannatul"];
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
       profileImage: "https://creazilla-store.fra1.digitaloceanspaces.com/emojis/50941/woman-student-emoji-clipart-md.png"
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
 bool isListView =true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("List And Grid View"),
        actions: [IconButton(onPressed: (){
          setState(() {
            isListView? isListView=false:isListView=true;
          });
          }, icon: Icon(isListView?Icons.grid_view:Icons.list_alt),iconSize: 30,)
        ],
      ),

      body:isListView?ListView.builder(
        itemCount:myStudentList.length ,
        itemBuilder: (context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDetails(id: myStudentList[index].id)));
              },
              child: Card(
                  elevation: 10,
                  shadowColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  color: Colors.blue.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          child: ClipOval(child: Image.network(myStudentList[index].profileImage,fit: BoxFit.cover,)),radius: 45,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Student Id:  ${myStudentList[index].studentId}"),
                            Text("Student Name: ${myStudentList[index].studentName}"),
                            Text("Student Type : ${myStudentList[index].type}"),

                          ],
                        )
                      ],
                    ),
                  )),
            ),
          );
        },

      ):
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ), itemBuilder: (context , int index){
        return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDetails(id: myStudentList[index].id)));
                    },
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

                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade100,
                                child: ClipOval(child: Image.network(myStudentList[index].profileImage,fit: BoxFit.cover,)),radius: 45,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Student Id:  ${myStudentList[index].studentId}"),
                                  Text("Student Name: ${myStudentList[index].studentName}"),
                                  Text("Student Type : ${myStudentList[index].type}"),

                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                );

      }, itemCount: myStudentList.length,),
    );
  }
}
