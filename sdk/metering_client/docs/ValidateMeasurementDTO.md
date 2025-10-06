# ValidateMeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**is_valid** | **bool** |  | [optional] [readonly] 
**is_error_muted** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.validate_measurement_dto import ValidateMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ValidateMeasurementDTO from a JSON string
validate_measurement_dto_instance = ValidateMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(ValidateMeasurementDTO.to_json())

# convert the object into a dict
validate_measurement_dto_dict = validate_measurement_dto_instance.to_dict()
# create an instance of ValidateMeasurementDTO from a dict
validate_measurement_dto_from_dict = ValidateMeasurementDTO.from_dict(validate_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


