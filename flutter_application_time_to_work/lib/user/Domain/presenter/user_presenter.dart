import 'package:flutter/material.dart';
import 'package:flutter_application_time_to_work/user/Domain/UseCases/get_user_by_id.dart';

abstract class UserPresenter extends ChangeNotifier {
  fillViewUserModel(GetUserByIdResponseModel getUserByIdResponseModel);
}
