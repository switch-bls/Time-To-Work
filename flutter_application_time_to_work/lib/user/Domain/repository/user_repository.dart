import 'package:flutter_application_time_to_work/user/Domain/UseCases/get_user_by_id.dart';
import 'package:flutter_application_time_to_work/user/Domain/entity/user.dart';

abstract class UserRepository {
  Future<User> getUserById(GetUserByIdRequestModel input);
}
