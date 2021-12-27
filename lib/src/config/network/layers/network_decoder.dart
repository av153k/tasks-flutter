import 'package:dio/dio.dart';
import 'package:tasks/src/helpers/log_helper.dart';
import '../base/base_network_model.dart';

class NetworkDecoder {
  static NetworkDecoder shared = NetworkDecoder();

  K decode<T extends BaseNetworkModel, K>(
      {required Response<dynamic> response, required T responseType}) {
    K? dataList;
    try {
      if (response.data is List) {
        var list = response.data as List;
        dataList = List<T>.from(
            list.map((item) => responseType.fromJson(item)).toList()) as K;
      }
    } on TypeError catch (e) {
      LogHelper.log.error(e.toString());
      rethrow;
    }
    return dataList!;
  }
}
