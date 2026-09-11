# BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**measurement_id** | **str** |  | [optional]
**value** | **float** |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**external_channel_identifier** | **str** |  | [optional]
**resolved_value** | **float** |  | [optional]
**reading_origin** | [**MeasurementReadingOrigin**](MeasurementReadingOrigin.md) |  | [optional]
**reading_method** | [**MeasurementReadingMethod**](MeasurementReadingMethod.md) |  | [optional]
**origin_details** | [**MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO**](MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.md) |  | [optional]
**calculated_consumption** | **float** |  | [optional]
**estimated_consumption** | **float** |  | [optional]
**upper_bound** | **float** |  | [optional]
**lower_bound** | **float** |  | [optional]

## Example

```python
from metering_client.models.base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto import BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO from a JSON string
base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto_instance = BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto_dict = base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO from a dict
base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto_from_dict = BaseMeteringIssueDetailsDTOMissingConsumptionMeteringIssueDetailsDTO.from_dict(base_metering_issue_details_dto_missing_consumption_metering_issue_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
