import 'package:code_base/common/constants/db_constants.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity(tableName: DBConstants.kUserTableName)
class User extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final double userId;
  final double personId;
  final String currentFirstName;
  final String currentLastName;
  final String? currentMiddleName;
  final String loginTime;
  final double fromParentId;
  final double toPupilId;

  const User({
    required this.userId,
    required this.personId,
    required this.currentFirstName,
    required this.currentLastName,
    this.currentMiddleName,
    required this.loginTime,
    required this.fromParentId,
    required this.toPupilId,
  });

  @override
  List<Object> get props {
    return [
      userId,
      personId,
      currentFirstName,
      currentLastName,
      currentMiddleName!,
      loginTime,
      fromParentId,
      toPupilId
    ];
  }

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() => <String, dynamic>{
        "USER_ID": userId,
        "PERSON_ID": personId,
        "CURRENT_FIRST_NAME": currentFirstName,
        "CURRENT_LAST_NAME": currentLastName,
        "CURRENT_MIDDLE_NAME": currentMiddleName,
        "LOGIN_TIME": loginTime,
        "FROM_PARENT_ID": fromParentId,
        "TO_PUPIL_ID": toPupilId,
      };
}
