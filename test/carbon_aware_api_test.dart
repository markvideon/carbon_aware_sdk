//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

import 'package:carbon_aware_sdk/carbon_aware_sdk.dart';
import 'package:test/test.dart';

import '_setup.dart';

/// tests for CarbonAwareApi
void main() {
  final now = DateTime.now().toUtc();
  final workloadMins = 120;

  group('tests for CarbonAwareApi', () {
    // Given an array of historical forecasts, retrieves the data that contains  forecasts metadata, the optimal forecast and a range of forecasts filtered by the attributes [start...end] if provided.
    //
    // This endpoint takes a batch of requests for historical forecast data, fetches them, and calculates the optimal   marginal carbon intensity windows for each using the same parameters available to the '/emissions/forecasts/current'  endpoint.                This endpoint is useful for back-testing what one might have done in the past, if they had access to the   current forecast at the time.
    //
    //Future<List<EmissionsForecastDTO>> batchForecastDataAsync({ List<EmissionsForecastBatchParametersDTO> emissionsForecastBatchParametersDTO }) async
    test('test batchForecastDataAsync', () async {
      final result = await instance.batchForecastDataAsync(
          emissionsForecastBatchParametersDTO: locations
              .map((e) => EmissionsForecastBatchParametersDTO(
                  requestedAt: DateTime.now(),
                  location: e,
                  // dataStartAt: now,
                  windowSize: workloadMins))
              .toList(growable: false));

      expect(result is List<EmissionsForecastDTO> && result.isNotEmpty, true);
    });

    // Retrieves the measured carbon intensity data between the time boundaries and calculates the average carbon intensity during that period.
    //
    // This endpoint is useful for reporting the measured carbon intensity for a specific time period in a specific location.
    //
    //Future<CarbonIntensityDTO> getAverageCarbonIntensity(String location, DateTime startTime, DateTime endTime) async
    test('test getAverageCarbonIntensity', () async {
      final result = await instance.getAverageCarbonIntensity(
          locations.first, now.subtract(Duration(days: 1)), now);

      expect(result is CarbonIntensityDTO, true);
    });

    // Given an array of request objects, each with their own location and time boundaries, calculate the average carbon intensity for that location and time period   and return an array of carbon intensity objects.
    //
    // The application only supports batching across a single location with different time boundaries. If multiple locations are provided, an error is returned.  For each item in the request array, the application returns a corresponding object containing the location, time boundaries, and average marginal carbon intensity.
    //
    //Future<List<CarbonIntensityDTO>> getAverageCarbonIntensityBatch({ List<CarbonIntensityBatchParametersDTO> carbonIntensityBatchParametersDTO }) async
    test('test getAverageCarbonIntensityBatch', () async {
      final result = await instance
          .getAverageCarbonIntensityBatch(carbonIntensityBatchParametersDTO: [
        CarbonIntensityBatchParametersDTO(
            location: locations.first,
            startTime: DateTime.now(),
            endTime: DateTime.now())
      ]);

      expect(result is List<CarbonIntensityDTO> && result.isNotEmpty, true);
    });

    // Calculate the best emission data by list of locations for a specified time period.
    //
    //Future<List<EmissionsData>> getBestEmissionsDataForLocationsByTime(List<String> location, { DateTime time, DateTime toTime }) async
    test('test getBestEmissionsDataForLocationsByTime', () async {
      final result = await instance.getBestEmissionsDataForLocationsByTime(
        locations,
      );

      expect(result is List<EmissionsData> && result.isNotEmpty, true);
    });

    // Retrieves the most recent forecasted data and calculates the optimal marginal carbon intensity window.
    //
    // This endpoint fetches only the most recently generated forecast for all provided locations.  It uses the \"dataStartAt\" and   \"dataEndAt\" parameters to scope the forecasted data points (if available for those times). If no start or end time   boundaries are provided, the entire forecast dataset is used. The scoped data points are used to calculate average marginal   carbon intensities of the specified \"windowSize\" and the optimal marginal carbon intensity window is identified.                The forecast data represents what the data source predicts future marginal carbon intesity values to be,   not actual measured emissions data (as future values cannot be known).                This endpoint is useful for determining if there is a more carbon-optimal time to use electicity predicted in the future.
    //
    //Future<List<EmissionsForecastDTO>> getCurrentForecastData(List<String> location, { DateTime dataStartAt, DateTime dataEndAt, int windowSize }) async
    test('test getCurrentForecastData', () async {
      final result = await instance.getCurrentForecastData(locations);
      expect(result is List<EmissionsForecastDTO> && result.isNotEmpty, true);
    });

    // Calculate the best emission data by location for a specified time period.
    //
    //Future<List<EmissionsData>> getEmissionsDataForLocationByTime(String location, { DateTime time, DateTime toTime }) async
    test('test getEmissionsDataForLocationByTime', () async {
      final result =
          await instance.getEmissionsDataForLocationByTime(locations.first);
      expect(result is List<EmissionsData> && result.isNotEmpty, true);
    });

    // Calculate the observed emission data by list of locations for a specified time period.
    //
    //Future<List<EmissionsData>> getEmissionsDataForLocationsByTime(List<String> location, { DateTime time, DateTime toTime }) async
    test('test getEmissionsDataForLocationsByTime', () async {
      final result =
          await instance.getEmissionsDataForLocationsByTime(locations);
      expect(result is List<EmissionsData> && result.isNotEmpty, true);
    });
  });
}
