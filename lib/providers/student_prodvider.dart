import 'package:flutter/material.dart';
import 'package:untitled/model/my_student.dart';

class StudentProvider extends ChangeNotifier {
  List<StudentModel> myStudentList = [
    StudentModel(
        id: 1,
        studentId: 644,
        studentName: "Sazid",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 2,
        studentId: 655,
        studentName: "Tufiq",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 3,
        studentId: 645,
        studentName: "Mosarof",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 4,
        studentId: 653,
        studentName: "Rejwan",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 5,
        studentId: 661,
        studentName: "Jannatul",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://creazilla-store.fra1.digitaloceanspaces.com/emojis/50941/woman-student-emoji-clipart-md.png"),
    StudentModel(
        id: 6,
        studentId: 660,
        studentName: "Redwan",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 7,
        studentId: 3013,
        studentName: "Tarek",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
    StudentModel(
        id: 8,
        studentId: 3027,
        studentName: "Fahima",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Regular",
        active: true,
        profileImage:
            "https://creazilla-store.fra1.digitaloceanspaces.com/emojis/50941/woman-student-emoji-clipart-md.png"),
    StudentModel(
        id: 9,
        studentId: 1911,
        studentName: "Sheble",
        studentFname: "xyz",
        studentMname: "abc",
        address: "Savar",
        type: "Complete",
        active: false,
        profileImage:
            "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png"),
  ];

  StudentModel? getStudentById(int stduentId) {
    final data = myStudentList.firstWhere((element) => element.id == stduentId);
    return data;
  }

  Future<void> addStudentInfo({
    required String studentName,
    required int studentId,
    required String studentType,
    String studentFatherName = '',
    String studentMotherName = '',
    String address = '',
    String type = '',
    bool active = true,
    String profileImage =
        "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png",
  }) async {
    myStudentList.add(StudentModel(
        id: myStudentList.length + 1,
        studentId: studentId,
        studentName: studentName,
        type: studentType,
        address: address,
        studentFname: studentFatherName,
        studentMname: studentMotherName,
        active: active,
        profileImage: profileImage));
    notifyListeners();
  }

  Future<void> updateStudentInfo({
    required int id,
    required String studentName,
    required int studentId,
    required String studentType,
    String studentFatherName = '',
    String studentMotherName = '',
    String address = '',
    String type = '',
    bool active = true,
    String profileImage =
        "https://emojigraph.org/media/apple/man-student-medium-light-skin-tone_1f468-1f3fc-200d-1f393.png",
  }) async {
    for (var element in myStudentList) {
      if (element.id == id) {
        StudentModel(
            studentId: studentId,
            studentName: studentName,
            type: studentType,
            address: address,
            studentFname: studentFatherName,
            studentMname: studentMotherName,
            active: active,
            profileImage: profileImage);
      }
    }

    notifyListeners();
  }

  Future<void> deleteStudent(int id) async {
    myStudentList.removeWhere((e) => e.id == id);
    notifyListeners();
  }
}
