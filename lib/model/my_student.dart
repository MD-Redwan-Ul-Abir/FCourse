class StudentModel {
  StudentModel({
    this.id = 0,
    this.studentId = 0,
    this.active = false,
    this.studentName = '',
    this.studentFname = '',
    this.studentMname = '',
    this.address = '',
    this.type = '',
    this.profileImage = '',
  });

  int id;
  int studentId;
  bool active;
  String studentName;
  String studentFname;
  String studentMname;
  String address;
  String type;
  String profileImage;
}
