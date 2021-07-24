import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String userName;
  final String _passWord;

  User(this.id, this.firstName, this.lastName, this.userName, this._passWord);

  @override
  List<Object?> get props => [id, firstName, lastName, userName, _passWord];
}
