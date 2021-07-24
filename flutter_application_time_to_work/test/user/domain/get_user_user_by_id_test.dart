import 'package:flutter_application_time_to_work/user/Domain/presenter/user_presenter.dart';
import 'package:flutter_application_time_to_work/user/Domain/repository/user_repository.dart';
import 'package:flutter_application_time_to_work/user/Domain/usecases/get_user_by_id.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([UserRepository])
@GenerateMocks([UserPresenter])
void main() {
  var repository = UserRepository();
  var presenter = UserPresenter();
  GetUserByIdImp(repository, presenter);
}
