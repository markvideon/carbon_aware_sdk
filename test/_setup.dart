// Expect a JSON file in this folder with keys: [username, password].
import 'dart:convert';
import 'dart:io';

import 'package:carbon_aware_sdk/generated/api.dart';

final file = File('${Platform.environment['HOME']}/carbon_aware_sdk/test/_credentials.json');
final credentials = Map.castFrom(jsonDecode(file.readAsStringSync()));

final locations = [
  'westus',
];

final instance = CarbonAwareApi(
  ApiClient(
    basePath: credentials['basePath'],
    authentication: HttpBasicAuth(
      username: credentials['username'],
      password: credentials['password']
    )
  )
);
