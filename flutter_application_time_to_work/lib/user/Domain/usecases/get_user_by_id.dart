import 'package:equatable/equatable.dart';
import 'package:flutter_application_time_to_work/user/Domain/entity/user.dart';
import 'package:flutter_application_time_to_work/user/Domain/presenter/user_presenter.dart';
import 'package:flutter_application_time_to_work/user/Domain/repository/user_repository.dart';

/// This use case take an id and give the corresponding user.
/// If there is no user corresponding to the id, it return an empty user.
abstract class GetUserById {
  Future<void> call(GetUserByIdRequestModel input);
}

class GetUserByIdImp extends GetUserById {
  final UserRepository repository;
  final UserPresenter presenter;

  GetUserByIdImp(this.repository, this.presenter);

  Future<void> call(GetUserByIdRequestModel input) async {
    var user = await this.repository.getUserById(input);

    this.presenter.fillViewUserModel(GetUserByIdResponseModel(user));
  }
}

/// Present the Request Model from the GetUserById use case
class GetUserByIdRequestModel extends Equatable {
  final int id;

  GetUserByIdRequestModel(this.id);

  @override
  List<Object?> get props => [id];
}

/// Present the Response Model from the GetUserById use case
class GetUserByIdResponseModel extends Equatable {
  final User user;

  GetUserByIdResponseModel(this.user);

  @override
  List<Object?> get props => [user];
}
