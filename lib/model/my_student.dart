
class StudentModel {
  StudentModel({
    this.id=0,
    this.studentId=0,
    this.active=false,
    this.studentName='',
    this.studentFname='',
    this.studentMname='',
    this.address='',
    this.type='',
    this.profileImage='',
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



  // factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
  //   id: json["id"] == null ? null : json["id"],
  //   studentId: json["category_id"] == null ? null : json["category_id"],
  //   active: json["active"] == null ? null : json["active"],
  //   studentName: json["sku"] == null ? null : json["sku"],
  //   studentFname: json["name"] == null ? null : json["name"],
  //   studentMname: json["upc"] == null ? null : json["upc"],
  //   address: json["description"] == null ? null : json["description"],
  //   type: json["type"] == null ? null : json["type"],
  // );
}
