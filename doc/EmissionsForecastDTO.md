# openapi.model.EmissionsForecastDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**generatedAt** | [**DateTime**](DateTime.md) | Timestamp when the forecast was generated. | [optional] 
**requestedAt** | [**DateTime**](DateTime.md) | For current requests, this value is the timestamp the request for forecast data was made.  For historical forecast requests, this value is the timestamp used to access the most   recently generated forecast as of that time. | [optional] 
**location** | **String** | The location of the forecast | [optional] 
**dataStartAt** | [**DateTime**](DateTime.md) | Start time boundary of forecasted data points. Ignores forecast data points before this time.  Defaults to the earliest time in the forecast data. | [optional] 
**dataEndAt** | [**DateTime**](DateTime.md) | End time boundary of forecasted data points. Ignores forecast data points after this time.  Defaults to the latest time in the forecast data. | [optional] 
**windowSize** | **int** | The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point. | [optional] 
**optimalDataPoints** | [**List<EmissionsDataDTO>**](EmissionsDataDTO.md) | The optimal forecasted data point within the 'forecastData' array.  Null if 'forecastData' array is empty. | [optional] [default to const []]
**forecastData** | [**List<EmissionsDataDTO>**](EmissionsDataDTO.md) | The forecasted data points transformed and filtered to reflect the specified time and window parameters.  Points are ordered chronologically; Empty array if all data points were filtered out.  E.G. dataStartAt and dataEndAt times outside the forecast period; windowSize greater than total duration of forecast data; | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


