class Users {
  String? name;
  String? email;
  String? phoneNo;
  DateTime? dob;
  DateTime? createdDate;
  //location to be added

  Users({
    this.name,
    this.email,
    this.phoneNo,
    this.dob,
    this.createdDate,
  });

  factory Users.fromJson(Map<String, dynamic>? json) {
    return Users(
      name: json?['name'] as String?,
      email: json?['email'] as String?,
      phoneNo: json?['phone_number'] as String?,
      dob: DateTime.tryParse(json?['date_of_birth']),
      createdDate: DateTime.tryParse(json?['created_date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNo,
      'name': name,
      'email': email,
      'date_of_birth': dob?.toString(),
      'created_date': createdDate?.toString(),
    };
  }
}
