import 'package:sosedifedi/data/models/user_data_response/user_data_response.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserDataModelMapper {
  UserData mapFromUserDataResponse({
    required UserDataResponse userDataResponse,
    String? phone,
  }) {
    return UserData(
      firstName: userDataResponse.firstName,
      surname: userDataResponse.surname,
      birthDay: userDataResponse.birthDay,
      gender: userDataResponse.gender,
      email: userDataResponse.email,
      phone: phone,
    );
  }

  UserDataResponse mapToUserDataResponse(UserData userDataModel) {
    return UserDataResponse(
      firstName: userDataModel.firstName,
      surname: userDataModel.surname,
      birthDay: userDataModel.birthDay,
      gender: userDataModel.gender,
      email: userDataModel.email,
    );
  }
}
