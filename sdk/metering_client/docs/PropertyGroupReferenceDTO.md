# PropertyGroupReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from metering_client.models.property_group_reference_dto import PropertyGroupReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupReferenceDTO from a JSON string
property_group_reference_dto_instance = PropertyGroupReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupReferenceDTO.to_json())

# convert the object into a dict
property_group_reference_dto_dict = property_group_reference_dto_instance.to_dict()
# create an instance of PropertyGroupReferenceDTO from a dict
property_group_reference_dto_from_dict = PropertyGroupReferenceDTO.from_dict(property_group_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


