import 'package:tutorials/request/model/common_param.dart';

class LoginRequestParam {
  String? userName;
  String? password;
  String? securityCode;

  CommonParam common = CommonParam();

  LoginRequestParam(this.userName, this.password, this.securityCode);

}