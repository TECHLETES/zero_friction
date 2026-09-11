# BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**total_consumption** | **float** |  | [optional]
**service_location_id** | **str** |  | [optional]
**service_location_address_display** | **str** |  | [optional]
**contract_id** | **str** |  | [optional]
**contract_number** | **str** |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**evaluation_window_start** | **datetime** |  | [optional]
**evaluation_window_end** | **datetime** |  | [optional]
**evaluation_window_days** | **int** |  | [optional]
**grace_days_before_supply_start** | **int** |  | [optional]
**grace_days_after_supply_end** | **int** |  | [optional]

## Example

```python
from metering_client.models.base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto import BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO from a JSON string
base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto_instance = BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto_dict = base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO from a dict
base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto_from_dict = BaseMeteringIssueDetailsDTOUncontractedConsumptionMeteringIssueDetailsDTO.from_dict(base_metering_issue_details_dto_uncontracted_consumption_metering_issue_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
