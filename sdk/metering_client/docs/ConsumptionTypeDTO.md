# ConsumptionTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**formula_stream_name** | **str** |  | [optional] 

## Example

```python
from metering_client.models.consumption_type_dto import ConsumptionTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionTypeDTO from a JSON string
consumption_type_dto_instance = ConsumptionTypeDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionTypeDTO.to_json())

# convert the object into a dict
consumption_type_dto_dict = consumption_type_dto_instance.to_dict()
# create an instance of ConsumptionTypeDTO from a dict
consumption_type_dto_from_dict = ConsumptionTypeDTO.from_dict(consumption_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


