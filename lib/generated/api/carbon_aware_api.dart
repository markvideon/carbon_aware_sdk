//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of carbon_aware_sdk;

class CarbonAwareApi {
  CarbonAwareApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Given an array of historical forecasts, retrieves the data that contains  forecasts metadata, the optimal forecast and a range of forecasts filtered by the attributes [start...end] if provided.
  ///
  /// This endpoint takes a batch of requests for historical forecast data, fetches them, and calculates the optimal   marginal carbon intensity windows for each using the same parameters available to the '/emissions/forecasts/current'  endpoint.                This endpoint is useful for back-testing what one might have done in the past, if they had access to the   current forecast at the time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<EmissionsForecastBatchParametersDTO>] emissionsForecastBatchParametersDTO:
  ///   Array of requested forecasts.
  Future<Response> batchForecastDataAsyncWithHttpInfo({ List<EmissionsForecastBatchParametersDTO>? emissionsForecastBatchParametersDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/forecasts/batch';

    // ignore: prefer_final_locals
    Object? postBody = emissionsForecastBatchParametersDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Given an array of historical forecasts, retrieves the data that contains  forecasts metadata, the optimal forecast and a range of forecasts filtered by the attributes [start...end] if provided.
  ///
  /// This endpoint takes a batch of requests for historical forecast data, fetches them, and calculates the optimal   marginal carbon intensity windows for each using the same parameters available to the '/emissions/forecasts/current'  endpoint.                This endpoint is useful for back-testing what one might have done in the past, if they had access to the   current forecast at the time.
  ///
  /// Parameters:
  ///
  /// * [List<EmissionsForecastBatchParametersDTO>] emissionsForecastBatchParametersDTO:
  ///   Array of requested forecasts.
  Future<List<EmissionsForecastDTO>?> batchForecastDataAsync({ List<EmissionsForecastBatchParametersDTO>? emissionsForecastBatchParametersDTO, }) async {
    final response = await batchForecastDataAsyncWithHttpInfo( emissionsForecastBatchParametersDTO: emissionsForecastBatchParametersDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmissionsForecastDTO>') as List)
        .cast<EmissionsForecastDTO>()
        .toList();

    }
    return null;
  }

  /// Retrieves the measured carbon intensity data between the time boundaries and calculates the average carbon intensity during that period.
  ///
  /// This endpoint is useful for reporting the measured carbon intensity for a specific time period in a specific location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The location name where workflow is run
  ///
  /// * [DateTime] startTime (required):
  ///   The time at which the workflow we are measuring carbon intensity for started
  ///
  /// * [DateTime] endTime (required):
  ///   The time at which the workflow we are measuring carbon intensity for ended
  Future<Response> getAverageCarbonIntensityWithHttpInfo(String location, DateTime startTime, DateTime endTime,) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/average-carbon-intensity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'location', location));
      queryParams.addAll(_queryParams('', 'startTime', startTime));
      queryParams.addAll(_queryParams('', 'endTime', endTime));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves the measured carbon intensity data between the time boundaries and calculates the average carbon intensity during that period.
  ///
  /// This endpoint is useful for reporting the measured carbon intensity for a specific time period in a specific location.
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   The location name where workflow is run
  ///
  /// * [DateTime] startTime (required):
  ///   The time at which the workflow we are measuring carbon intensity for started
  ///
  /// * [DateTime] endTime (required):
  ///   The time at which the workflow we are measuring carbon intensity for ended
  Future<CarbonIntensityDTO?> getAverageCarbonIntensity(String location, DateTime startTime, DateTime endTime,) async {
    final response = await getAverageCarbonIntensityWithHttpInfo(location, startTime, endTime,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CarbonIntensityDTO',) as CarbonIntensityDTO;
    
    }
    return null;
  }

  /// Given an array of request objects, each with their own location and time boundaries, calculate the average carbon intensity for that location and time period   and return an array of carbon intensity objects.
  ///
  /// The application only supports batching across a single location with different time boundaries. If multiple locations are provided, an error is returned.  For each item in the request array, the application returns a corresponding object containing the location, time boundaries, and average marginal carbon intensity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<CarbonIntensityBatchParametersDTO>] carbonIntensityBatchParametersDTO:
  ///   Array of inputs where each contains a \"location\", \"startDate\", and \"endDate\" for which to calculate average marginal carbon intensity.
  Future<Response> getAverageCarbonIntensityBatchWithHttpInfo({ List<CarbonIntensityBatchParametersDTO>? carbonIntensityBatchParametersDTO, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/average-carbon-intensity/batch';

    // ignore: prefer_final_locals
    Object? postBody = carbonIntensityBatchParametersDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Given an array of request objects, each with their own location and time boundaries, calculate the average carbon intensity for that location and time period   and return an array of carbon intensity objects.
  ///
  /// The application only supports batching across a single location with different time boundaries. If multiple locations are provided, an error is returned.  For each item in the request array, the application returns a corresponding object containing the location, time boundaries, and average marginal carbon intensity.
  ///
  /// Parameters:
  ///
  /// * [List<CarbonIntensityBatchParametersDTO>] carbonIntensityBatchParametersDTO:
  ///   Array of inputs where each contains a \"location\", \"startDate\", and \"endDate\" for which to calculate average marginal carbon intensity.
  Future<List<CarbonIntensityDTO>?> getAverageCarbonIntensityBatch({ List<CarbonIntensityBatchParametersDTO>? carbonIntensityBatchParametersDTO, }) async {
    final response = await getAverageCarbonIntensityBatchWithHttpInfo( carbonIntensityBatchParametersDTO: carbonIntensityBatchParametersDTO, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CarbonIntensityDTO>') as List)
        .cast<CarbonIntensityDTO>()
        .toList();

    }
    return null;
  }

  /// Calculate the best emission data by list of locations for a specified time period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<Response> getBestEmissionsDataForLocationsByTimeWithHttpInfo(List<String> location, { DateTime? time, DateTime? toTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/bylocations/best';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('multi', 'location', location));
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (toTime != null) {
      queryParams.addAll(_queryParams('', 'toTime', toTime));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Calculate the best emission data by list of locations for a specified time period.
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<List<EmissionsData>?> getBestEmissionsDataForLocationsByTime(List<String> location, { DateTime? time, DateTime? toTime, }) async {
    final response = await getBestEmissionsDataForLocationsByTimeWithHttpInfo(location,  time: time, toTime: toTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmissionsData>') as List)
        .cast<EmissionsData>()
        .toList();

    }
    return null;
  }

  /// Retrieves the most recent forecasted data and calculates the optimal marginal carbon intensity window.
  ///
  /// This endpoint fetches only the most recently generated forecast for all provided locations.  It uses the \"dataStartAt\" and   \"dataEndAt\" parameters to scope the forecasted data points (if available for those times). If no start or end time   boundaries are provided, the entire forecast dataset is used. The scoped data points are used to calculate average marginal   carbon intensities of the specified \"windowSize\" and the optimal marginal carbon intensity window is identified.                The forecast data represents what the data source predicts future marginal carbon intesity values to be,   not actual measured emissions data (as future values cannot be known).                This endpoint is useful for determining if there is a more carbon-optimal time to use electicity predicted in the future.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] dataStartAt:
  ///   Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data.
  ///
  /// * [DateTime] dataEndAt:
  ///   End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data.
  ///
  /// * [int] windowSize:
  ///   The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point.
  Future<Response> getCurrentForecastDataWithHttpInfo(List<String> location, { DateTime? dataStartAt, DateTime? dataEndAt, int? windowSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/forecasts/current';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('multi', 'location', location));
    if (dataStartAt != null) {
      queryParams.addAll(_queryParams('', 'dataStartAt', dataStartAt));
    }
    if (dataEndAt != null) {
      queryParams.addAll(_queryParams('', 'dataEndAt', dataEndAt));
    }
    if (windowSize != null) {
      queryParams.addAll(_queryParams('', 'windowSize', windowSize));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves the most recent forecasted data and calculates the optimal marginal carbon intensity window.
  ///
  /// This endpoint fetches only the most recently generated forecast for all provided locations.  It uses the \"dataStartAt\" and   \"dataEndAt\" parameters to scope the forecasted data points (if available for those times). If no start or end time   boundaries are provided, the entire forecast dataset is used. The scoped data points are used to calculate average marginal   carbon intensities of the specified \"windowSize\" and the optimal marginal carbon intensity window is identified.                The forecast data represents what the data source predicts future marginal carbon intesity values to be,   not actual measured emissions data (as future values cannot be known).                This endpoint is useful for determining if there is a more carbon-optimal time to use electicity predicted in the future.
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] dataStartAt:
  ///   Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data.
  ///
  /// * [DateTime] dataEndAt:
  ///   End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data.
  ///
  /// * [int] windowSize:
  ///   The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point.
  Future<List<EmissionsForecastDTO>?> getCurrentForecastData(List<String> location, { DateTime? dataStartAt, DateTime? dataEndAt, int? windowSize, }) async {
    final response = await getCurrentForecastDataWithHttpInfo(location,  dataStartAt: dataStartAt, dataEndAt: dataEndAt, windowSize: windowSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmissionsForecastDTO>') as List)
        .cast<EmissionsForecastDTO>()
        .toList();

    }
    return null;
  }

  /// Calculate the best emission data by location for a specified time period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   String named location.
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<Response> getEmissionsDataForLocationByTimeWithHttpInfo(String location, { DateTime? time, DateTime? toTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/bylocation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'location', location));
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (toTime != null) {
      queryParams.addAll(_queryParams('', 'toTime', toTime));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Calculate the best emission data by location for a specified time period.
  ///
  /// Parameters:
  ///
  /// * [String] location (required):
  ///   String named location.
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<List<EmissionsData>?> getEmissionsDataForLocationByTime(String location, { DateTime? time, DateTime? toTime, }) async {
    final response = await getEmissionsDataForLocationByTimeWithHttpInfo(location,  time: time, toTime: toTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmissionsData>') as List)
        .cast<EmissionsData>()
        .toList();

    }
    return null;
  }

  /// Calculate the observed emission data by list of locations for a specified time period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<Response> getEmissionsDataForLocationsByTimeWithHttpInfo(List<String> location, { DateTime? time, DateTime? toTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emissions/bylocations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('multi', 'location', location));
    if (time != null) {
      queryParams.addAll(_queryParams('', 'time', time));
    }
    if (toTime != null) {
      queryParams.addAll(_queryParams('', 'toTime', toTime));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Calculate the observed emission data by list of locations for a specified time period.
  ///
  /// Parameters:
  ///
  /// * [List<String>] location (required):
  ///   String array of named locations
  ///
  /// * [DateTime] time:
  ///   [Optional] Start time for the data query.
  ///
  /// * [DateTime] toTime:
  ///   [Optional] End time for the data query.
  Future<List<EmissionsData>?> getEmissionsDataForLocationsByTime(List<String> location, { DateTime? time, DateTime? toTime, }) async {
    final response = await getEmissionsDataForLocationsByTimeWithHttpInfo(location,  time: time, toTime: toTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmissionsData>') as List)
        .cast<EmissionsData>()
        .toList();

    }
    return null;
  }
}
