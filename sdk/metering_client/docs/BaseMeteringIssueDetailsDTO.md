# BaseMeteringIssueDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**measurement_id** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**resolved_value** | **float** |  | [optional] 
**reading_origin** | [**MeasurementReadingOrigin**](MeasurementReadingOrigin.md) |  | [optional] 
**reading_method** | [**MeasurementReadingMethod**](MeasurementReadingMethod.md) |  | [optional] 
**origin_details** | [**MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO**](MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.md) |  | [optional] 
**calculated_consumption** | **float** |  | [optional] 
**estimated_consumption** | **float** |  | [optional] 
**upper_bound** | **float** |  | [optional] 
**lower_bound** | **float** |  | [optional] 
**reset_date_time** | **datetime** |  | [optional] 
**reset_year** | **int** |  | [optional] 
**expected_value** | **float** |  | [optional] 
**observed_value** | **float** |  | [optional] 
**observed_measurement_id** | **str** |  | [optional] 
**reading_missing** | **bool** |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 
**resolved_reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 
**previous_reading_end_date_time** | **datetime** |  | [optional] 
**detected_at_end_date_time** | **datetime** |  | [optional] 
**expected_next_reading_date_time** | **datetime** |  | [optional] 
**total_consumption** | **float** |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**service_location_address_display** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**evaluation_window_start** | **datetime** |  | [optional] 
**evaluation_window_end** | **datetime** |  | [optional] 
**evaluation_window_days** | **int** |  | [optional] 
**grace_days_before_supply_start** | **int** |  | [optional] 
**grace_days_after_supply_end** | **int** |  | [optional] 
**zero_consumption_days_observed** | **int** |  | [optional] 
**min_expected_days** | **int** |  | [optional] 
**expected_days** | **int** |  | [optional] 
**overlapping_start_date_time** | **datetime** |  | [optional] 
**overlapping_end_date_time** | **datetime** |  | [optional] 
**overlapping_value** | **float** |  | [optional] 
**overlapping_unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 

## Example

```python
from metering_client.models.base_metering_issue_details_dto import BaseMeteringIssueDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueDetailsDTO from a JSON string
base_metering_issue_details_dto_instance = BaseMeteringIssueDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_details_dto_dict = base_metering_issue_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueDetailsDTO from a dict
base_metering_issue_details_dto_from_dict = BaseMeteringIssueDetailsDTO.from_dict(base_metering_issue_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


