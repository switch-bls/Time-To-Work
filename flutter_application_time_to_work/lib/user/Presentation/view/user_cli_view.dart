import 'package:flutter_application_time_to_work/user/Presentation/view_model/user_view_model.dart';

class UserCliView {
  final UserViewModel userViewModel;

  UserCliView(this.userViewModel);

  printUser() {
    print("==============================================");
    print("Id : " + this.userViewModel.id);
    print("First Name : " + this.userViewModel.firstName);
    print("Last Name : " + this.userViewModel.lastName);
    print("Username : " + this.userViewModel.userName + "\n");
  }
}
