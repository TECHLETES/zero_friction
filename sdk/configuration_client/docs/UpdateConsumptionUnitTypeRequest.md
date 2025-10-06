# UpdateConsumptionUnitTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**allowed_entity_subject_types** | [**List[EntitySubjectType]**](EntitySubjectType.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_consumption_unit_type_request import UpdateConsumptionUnitTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateConsumptionUnitTypeRequest from a JSON string
update_consumption_unit_type_request_instance = UpdateConsumptionUnitTypeRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateConsumptionUnitTypeRequest.to_json())

# convert the object into a dict
update_consumption_unit_type_request_dict = update_consumption_unit_type_request_instance.to_dict()
# create an instance of UpdateConsumptionUnitTypeRequest from a dict
update_consumption_unit_type_request_from_dict = UpdateConsumptionUnitTypeRequest.from_dict(update_consumption_unit_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


