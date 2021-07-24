import 'package:flutter/cupertino.dart';
import 'package:flutter_application_time_to_work/user/Domain/UseCases/get_user_by_id.dart';
import 'package:flutter_application_time_to_work/user/Domain/presenter/user_presenter.dart';
import 'package:flutter_application_time_to_work/user/Presentation/view_model/user_view_model.dart';

class UserPrenterImp extends UserPresenter {
  final UserViewModel userViewModel;

  UserPrenterImp(this.userViewModel);

  @override
  fillViewUserModel(GetUserByIdResponseModel getUserByIdResponseModel) {
    this.userViewModel.id = getUserByIdResponseModel.user.id.toString();
    this.userViewModel.firstName = getUserByIdResponseModel.user.firstName;
    this.userViewModel.lastName = getUserByIdResponseModel.user.lastName;
    this.userViewModel.userName = getUserByIdResponseModel.user.userName;
    ChangeNotifier();
  }
}
