# BaseMeteringIssueResolutionValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**value** | **float** |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 

## Example

```python
from metering_client.models.base_metering_issue_resolution_value_dto import BaseMeteringIssueResolutionValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueResolutionValueDTO from a JSON string
base_metering_issue_resolution_value_dto_instance = BaseMeteringIssueResolutionValueDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueResolutionValueDTO.to_json())

# convert the object into a dict
base_metering_issue_resolution_value_dto_dict = base_metering_issue_resolution_value_dto_instance.to_dict()
# create an instance of BaseMeteringIssueResolutionValueDTO from a dict
base_metering_issue_resolution_value_dto_from_dict = BaseMeteringIssueResolutionValueDTO.from_dict(base_metering_issue_resolution_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


