# CustomEntityPropertyReceivingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value_decimal** | **float** |  | [optional] 
**value_number** | **int** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**receiving_period_type** | **int** |  | [optional] 

## Example

```python
from billing_client.models.custom_entity_property_receiving_period_dto import CustomEntityPropertyReceivingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyReceivingPeriodDTO from a JSON string
custom_entity_property_receiving_period_dto_instance = CustomEntityPropertyReceivingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyReceivingPeriodDTO.to_json())

# convert the object into a dict
custom_entity_property_receiving_period_dto_dict = custom_entity_property_receiving_period_dto_instance.to_dict()
# create an instance of CustomEntityPropertyReceivingPeriodDTO from a dict
custom_entity_property_receiving_period_dto_from_dict = CustomEntityPropertyReceivingPeriodDTO.from_dict(custom_entity_property_receiving_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


