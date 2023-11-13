// ignore: file_names
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VolunteerModel {

  final String email;
  final String phone;
  final String age;
  final String name;
  final String gender;
  final String bac;
  final String jobType;
  final String joinType;
  final String voluTime;
  
  VolunteerModel({
    required this.email,
    required this.phone,
    required this.age,
    required this.name,
    required this.gender,
    required this.bac,
    required this.jobType,
    required this.joinType,
    required this.voluTime,
  });

  VolunteerModel copyWith({
    String? email,
    String? phone,
    String? age,
    String? name,
    String? gender,
    String? bac,
    String? jobType,
    String? joinType,
    String? voluTime,
  }) {
    return VolunteerModel(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      age: age ?? this.age,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      bac: bac ?? this.bac,
      jobType: jobType ?? this.jobType,
      joinType: joinType ?? this.joinType,
      voluTime: voluTime ?? this.voluTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'phone': phone,
      'age': age,
      'name': name,
      'gender': gender,
      'bac': bac,
      'jobType': jobType,
      'joinType': joinType,
      'voluTime': voluTime,
    };
  }

  factory VolunteerModel.fromMap(Map<String, dynamic> map) {
    return VolunteerModel(
      email: map['email'] as String,
      phone: map['phone'] as String,
      age: map['age'] as String,
      name: map['name'] as String,
      gender: map['gender'] as String,
      bac: map['bac'] as String,
      jobType: map['jobType'] as String,
      joinType: map['joinType'] as String,
      voluTime: map['voluTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VolunteerModel.fromJson(String source) =>
      VolunteerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VolunteerModel(email: $email, phone: $phone, age: $age, name: $name, gender: $gender, bac: $bac, jobType: $jobType, joinType: $joinType, voluTime: $voluTime)';
  }

  @override
  bool operator ==(covariant VolunteerModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.phone == phone &&
      other.age == age &&
      other.name == name &&
      other.gender == gender &&
      other.bac == bac &&
      other.jobType == jobType &&
      other.joinType == joinType &&
      other.voluTime == voluTime;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      phone.hashCode ^
      age.hashCode ^
      name.hashCode ^
      gender.hashCode ^
      bac.hashCode ^
      jobType.hashCode ^
      joinType.hashCode ^
      voluTime.hashCode;
  }
}
