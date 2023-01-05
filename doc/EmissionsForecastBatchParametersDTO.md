# openapi.model.EmissionsForecastBatchParametersDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requestedAt** | [**DateTime**](DateTime.md) | For historical forecast requests, this value is the timestamp used to access the most  recently generated forecast as of that time. | [optional] 
**location** | **String** | The location of the forecast | [optional] 
**dataStartAt** | [**DateTime**](DateTime.md) | Start time boundary of forecasted data points.Ignores current forecast data points before this time.  Defaults to the earliest time in the forecast data. | [optional] 
**dataEndAt** | [**DateTime**](DateTime.md) | End time boundary of forecasted data points. Ignores current forecast data points after this time.  Defaults to the latest time in the forecast data. | [optional] 
**windowSize** | **int** | The estimated duration (in minutes) of the workload.  Defaults to the duration of a single forecast data point. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


