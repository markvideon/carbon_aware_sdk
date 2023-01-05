import '../test/_setup.dart';
import 'package:carbon_aware_sdk/carbon_aware_sdk.dart';

void main() async {
  final instance = CarbonAwareApi(ApiClient(
      basePath: credentials['basePath'],
      authentication: HttpBasicAuth(
          username: credentials['username'],
          password: credentials['password'])));

  final estimatedWorkloadMins = 10;

  final result = await instance.batchForecastDataAsync(
      emissionsForecastBatchParametersDTO: locations
          .map((e) => EmissionsForecastBatchParametersDTO(
              requestedAt: DateTime.now(),
              location: e,
              // dataStartAt: now,
              windowSize: estimatedWorkloadMins))
          .toList(growable: false));

  print(result);
}
