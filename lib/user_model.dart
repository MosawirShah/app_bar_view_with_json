class UserModel {
  String firstName;
  String lastName;
  int rollNo;
  List<Section> sections;
  String role;
  String bookTitle;

  UserModel(
      {required this.firstName,
      required this.lastName,
      required this.rollNo,
      required this.sections,
      required this.role,
      required this.bookTitle});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        firstName: map['firstName'],
        lastName: map['lastName'],
        rollNo: map['rollNo'],
        sections: (map['sections'] as List).map((e) => Section.fromMap(e)).toList() ,
        role: map['role'],
        bookTitle: map['bookTitle']);

  }

  // Map<String, dynamic> toMap(){
  //   return{
  //     firstName: firstName,
  //     lastName : lastName
  //   };
 // }
}
class Section{
  String a;
  String b;
  String c;

  Section({required this.a, required this.b, required this.c});

  factory Section.fromMap(Map<String, dynamic> map){
    return Section(a: map['a'], b: map['b'], c: map['c']);
  }
}
