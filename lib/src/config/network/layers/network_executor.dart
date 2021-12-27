import 'package:dio/dio.dart';
import '../../../helpers/log_helper.dart';
import '../base/base_client_generator.dart';
import '../base/base_network_model.dart';
import 'network_decoder.dart';
import '../models/network_error/network_error.dart';
import '../models/result/result.dart';
import '../options/network_options.dart';
import 'network_connectivity.dart';
import 'network_creator.dart';

class NetworkExecutor {
  NetworkExecutor shared = NetworkExecutor();

  Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required BaseClientGenerator route,
      required T responseType,
      NetworkOptions? options}) async {
    LogHelper.log.info(route.toString());

    // Check Network Connectivity
    if (await NetworkConnectivity.status) {
      try {
        var response =
            await NetworkCreator.shared.request(route: route, options: options);
        var data = NetworkDecoder.shared
            .decode<T, K>(response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        LogHelper.log.error('$route => ${NetworkError.request(error: diorError)}');

        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        LogHelper.log.error('$route => ${NetworkError.type(error: e.toString())}');

        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      LogHelper.log.warning(
          '${const NetworkError.connectivity(message: 'No Internet Connection')}');

      return const Result.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
