import 'package:equatable/equatable.dart';

class UserViewModel extends Equatable {
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String userName;

  UserViewModel(
    this.id,
    this.firstName,
    this.lastName,
    this.userName,
  );

  @override
  List<Object?> get props => [id, firstName, lastName, userName];
}
