# BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**reset_date_time** | **datetime** |  | [optional] 
**reset_year** | **int** |  | [optional] 
**expected_value** | **float** |  | [optional] 
**observed_value** | **float** |  | [optional] 
**observed_measurement_id** | **str** |  | [optional] 
**reading_missing** | **bool** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**resolved_value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto import BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO from a JSON string
base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto_instance = BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto_dict = base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO from a dict
base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto_from_dict = BaseMeteringIssueDetailsDTOMissingMeterResetMeteringIssueDetailsDTO.from_dict(base_metering_issue_details_dto_missing_meter_reset_metering_issue_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


