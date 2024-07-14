

import 'package:petcare/core/class/requeststatus.dart';

handlingData(response) {
  if (response is RequestStatus) {
    return response;
  } else {
    return RequestStatus.success;
  }
}
