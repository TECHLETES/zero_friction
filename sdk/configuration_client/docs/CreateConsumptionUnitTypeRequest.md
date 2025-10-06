# CreateConsumptionUnitTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**allowed_entity_subject_types** | [**List[EntitySubjectType]**](EntitySubjectType.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_consumption_unit_type_request import CreateConsumptionUnitTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateConsumptionUnitTypeRequest from a JSON string
create_consumption_unit_type_request_instance = CreateConsumptionUnitTypeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateConsumptionUnitTypeRequest.to_json())

# convert the object into a dict
create_consumption_unit_type_request_dict = create_consumption_unit_type_request_instance.to_dict()
# create an instance of CreateConsumptionUnitTypeRequest from a dict
create_consumption_unit_type_request_from_dict = CreateConsumptionUnitTypeRequest.from_dict(create_consumption_unit_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


