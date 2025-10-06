# MeterRelationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_id** | **str** |  | [optional] 
**serial_number** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.meter_relation_dto import MeterRelationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeterRelationDTO from a JSON string
meter_relation_dto_instance = MeterRelationDTO.from_json(json)
# print the JSON string representation of the object
print(MeterRelationDTO.to_json())

# convert the object into a dict
meter_relation_dto_dict = meter_relation_dto_instance.to_dict()
# create an instance of MeterRelationDTO from a dict
meter_relation_dto_from_dict = MeterRelationDTO.from_dict(meter_relation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


