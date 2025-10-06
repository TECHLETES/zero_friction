# OutputChannelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**formula** | [**MeteringFormulaDTO**](MeteringFormulaDTO.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**validation_result** | [**FormulaValidationResultDTO**](FormulaValidationResultDTO.md) | Represents the result of validating a formula, including any validation errors | [optional] 

## Example

```python
from metering_client.models.output_channel_dto import OutputChannelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutputChannelDTO from a JSON string
output_channel_dto_instance = OutputChannelDTO.from_json(json)
# print the JSON string representation of the object
print(OutputChannelDTO.to_json())

# convert the object into a dict
output_channel_dto_dict = output_channel_dto_instance.to_dict()
# create an instance of OutputChannelDTO from a dict
output_channel_dto_from_dict = OutputChannelDTO.from_dict(output_channel_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


