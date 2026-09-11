# BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional]
**resolved_reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional]
**previous_reading_end_date_time** | **datetime** |  | [optional]
**detected_at_end_date_time** | **datetime** |  | [optional]
**expected_next_reading_date_time** | **datetime** |  | [optional]

## Example

```python
from metering_client.models.base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto import BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO from a JSON string
base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto_instance = BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto_dict = base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO from a dict
base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto_from_dict = BaseMeteringIssueDetailsDTOMeterReadingFrequencyMeteringIssueDetailsDTO.from_dict(base_metering_issue_details_dto_meter_reading_frequency_metering_issue_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
