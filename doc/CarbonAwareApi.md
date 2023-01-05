# carbon_aware_sdk.CarbonAwareApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchForecastDataAsync**](CarbonAwareApi.md#batchforecastdataasync) | **POST** /emissions/forecasts/batch | Given an array of historical forecasts, retrieves the data that contains  forecasts metadata, the optimal forecast and a range of forecasts filtered by the attributes [start...end] if provided.
[**getAverageCarbonIntensity**](CarbonAwareApi.md#getaveragecarbonintensity) | **GET** /emissions/average-carbon-intensity | Retrieves the measured carbon intensity data between the time boundaries and calculates the average carbon intensity during that period.
[**getAverageCarbonIntensityBatch**](CarbonAwareApi.md#getaveragecarbonintensitybatch) | **POST** /emissions/average-carbon-intensity/batch | Given an array of request objects, each with their own location and time boundaries, calculate the average carbon intensity for that location and time period   and return an array of carbon intensity objects.
[**getBestEmissionsDataForLocationsByTime**](CarbonAwareApi.md#getbestemissionsdataforlocationsbytime) | **GET** /emissions/bylocations/best | Calculate the best emission data by list of locations for a specified time period.
[**getCurrentForecastData**](CarbonAwareApi.md#getcurrentforecastdata) | **GET** /emissions/forecasts/current | Retrieves the most recent forecasted data and calculates the optimal marginal carbon intensity window.
[**getEmissionsDataForLocationByTime**](CarbonAwareApi.md#getemissionsdataforlocationbytime) | **GET** /emissions/bylocation | Calculate the best emission data by location for a specified time period.
[**getEmissionsDataForLocationsByTime**](CarbonAwareApi.md#getemissionsdataforlocationsbytime) | **GET** /emissions/bylocations | Calculate the observed emission data by list of locations for a specified time period.


# **batchForecastDataAsync**
> List<EmissionsForecastDTO> batchForecastDataAsync(emissionsForecastBatchParametersDTO)

Given an array of historical forecasts, retrieves the data that contains  forecasts metadata, the optimal forecast and a range of forecasts filtered by the attributes [start...end] if provided.

This endpoint takes a batch of requests for historical forecast data, fetches them, and calculates the optimal   marginal carbon intensity windows for each using the same parameters available to the '/emissions/forecasts/current'  endpoint.                This endpoint is useful for back-testing what one might have done in the past, if they had access to the   current forecast at the time.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final emissionsForecastBatchParametersDTO = [List<EmissionsForecastBatchParametersDTO>()]; // List<EmissionsForecastBatchParametersDTO> | Array of requested forecasts.

try {
    final result = api_instance.batchForecastDataAsync(emissionsForecastBatchParametersDTO);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->batchForecastDataAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emissionsForecastBatchParametersDTO** | [**List<EmissionsForecastBatchParametersDTO>**](EmissionsForecastBatchParametersDTO.md)| Array of requested forecasts. | [optional] 

### Return type

[**List<EmissionsForecastDTO>**](EmissionsForecastDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAverageCarbonIntensity**
> CarbonIntensityDTO getAverageCarbonIntensity(location, startTime, endTime)

Retrieves the measured carbon intensity data between the time boundaries and calculates the average carbon intensity during that period.

This endpoint is useful for reporting the measured carbon intensity for a specific time period in a specific location.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final location = eastus; // String | The location name where workflow is run
final startTime = 2022-03-01T15:30:00Z; // DateTime | The time at which the workflow we are measuring carbon intensity for started
final endTime = 2022-03-01T18:30:00Z; // DateTime | The time at which the workflow we are measuring carbon intensity for ended

try {
    final result = api_instance.getAverageCarbonIntensity(location, startTime, endTime);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getAverageCarbonIntensity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The location name where workflow is run | 
 **startTime** | **DateTime**| The time at which the workflow we are measuring carbon intensity for started | 
 **endTime** | **DateTime**| The time at which the workflow we are measuring carbon intensity for ended | 

### Return type

[**CarbonIntensityDTO**](CarbonIntensityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAverageCarbonIntensityBatch**
> List<CarbonIntensityDTO> getAverageCarbonIntensityBatch(carbonIntensityBatchParametersDTO)

Given an array of request objects, each with their own location and time boundaries, calculate the average carbon intensity for that location and time period   and return an array of carbon intensity objects.

The application only supports batching across a single location with different time boundaries. If multiple locations are provided, an error is returned.  For each item in the request array, the application returns a corresponding object containing the location, time boundaries, and average marginal carbon intensity.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final carbonIntensityBatchParametersDTO = [List<CarbonIntensityBatchParametersDTO>()]; // List<CarbonIntensityBatchParametersDTO> | Array of inputs where each contains a \"location\", \"startDate\", and \"endDate\" for which to calculate average marginal carbon intensity.

try {
    final result = api_instance.getAverageCarbonIntensityBatch(carbonIntensityBatchParametersDTO);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getAverageCarbonIntensityBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carbonIntensityBatchParametersDTO** | [**List<CarbonIntensityBatchParametersDTO>**](CarbonIntensityBatchParametersDTO.md)| Array of inputs where each contains a \"location\", \"startDate\", and \"endDate\" for which to calculate average marginal carbon intensity. | [optional] 

### Return type

[**List<CarbonIntensityDTO>**](CarbonIntensityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBestEmissionsDataForLocationsByTime**
> List<EmissionsData> getBestEmissionsDataForLocationsByTime(location, time, toTime)

Calculate the best emission data by list of locations for a specified time period.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final location = []; // List<String> | String array of named locations
final time = 2022-03-01T15:30:00Z; // DateTime | [Optional] Start time for the data query.
final toTime = 2022-03-01T18:30:00Z; // DateTime | [Optional] End time for the data query.

try {
    final result = api_instance.getBestEmissionsDataForLocationsByTime(location, time, toTime);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getBestEmissionsDataForLocationsByTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**List<String>**](String.md)| String array of named locations | [default to const []]
 **time** | **DateTime**| [Optional] Start time for the data query. | [optional] 
 **toTime** | **DateTime**| [Optional] End time for the data query. | [optional] 

### Return type

[**List<EmissionsData>**](EmissionsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentForecastData**
> List<EmissionsForecastDTO> getCurrentForecastData(location, dataStartAt, dataEndAt, windowSize)

Retrieves the most recent forecasted data and calculates the optimal marginal carbon intensity window.

This endpoint fetches only the most recently generated forecast for all provided locations.  It uses the \"dataStartAt\" and   \"dataEndAt\" parameters to scope the forecasted data points (if available for those times). If no start or end time   boundaries are provided, the entire forecast dataset is used. The scoped data points are used to calculate average marginal   carbon intensities of the specified \"windowSize\" and the optimal marginal carbon intensity window is identified.                The forecast data represents what the data source predicts future marginal carbon intesity values to be,   not actual measured emissions data (as future values cannot be known).                This endpoint is useful for determining if there is a more carbon-optimal time to use electicity predicted in the future.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final location = []; // List<String> | String array of named locations
final dataStartAt = 2022-03-01T15:30:00Z; // DateTime | Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data.
final dataEndAt = 2022-03-01T18:30:00Z; // DateTime | End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data.
final windowSize = 30; // int | The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point.

try {
    final result = api_instance.getCurrentForecastData(location, dataStartAt, dataEndAt, windowSize);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getCurrentForecastData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**List<String>**](String.md)| String array of named locations | [default to const []]
 **dataStartAt** | **DateTime**| Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data. | [optional] 
 **dataEndAt** | **DateTime**| End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data. | [optional] 
 **windowSize** | **int**| The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point. | [optional] 

### Return type

[**List<EmissionsForecastDTO>**](EmissionsForecastDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmissionsDataForLocationByTime**
> List<EmissionsData> getEmissionsDataForLocationByTime(location, time, toTime)

Calculate the best emission data by location for a specified time period.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final location = location_example; // String | String named location.
final time = 2013-10-20T19:20:30+01:00; // DateTime | [Optional] Start time for the data query.
final toTime = 2013-10-20T19:20:30+01:00; // DateTime | [Optional] End time for the data query.

try {
    final result = api_instance.getEmissionsDataForLocationByTime(location, time, toTime);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getEmissionsDataForLocationByTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| String named location. | 
 **time** | **DateTime**| [Optional] Start time for the data query. | [optional] 
 **toTime** | **DateTime**| [Optional] End time for the data query. | [optional] 

### Return type

[**List<EmissionsData>**](EmissionsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmissionsDataForLocationsByTime**
> List<EmissionsData> getEmissionsDataForLocationsByTime(location, time, toTime)

Calculate the observed emission data by list of locations for a specified time period.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CarbonAwareApi();
final location = []; // List<String> | String array of named locations
final time = 2022-03-01T15:30:00Z; // DateTime | [Optional] Start time for the data query.
final toTime = 2022-03-01T18:30:00Z; // DateTime | [Optional] End time for the data query.

try {
    final result = api_instance.getEmissionsDataForLocationsByTime(location, time, toTime);
    print(result);
} catch (e) {
    print('Exception when calling CarbonAwareApi->getEmissionsDataForLocationsByTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | [**List<String>**](String.md)| String array of named locations | [default to const []]
 **time** | **DateTime**| [Optional] Start time for the data query. | [optional] 
 **toTime** | **DateTime**| [Optional] End time for the data query. | [optional] 

### Return type

[**List<EmissionsData>**](EmissionsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

