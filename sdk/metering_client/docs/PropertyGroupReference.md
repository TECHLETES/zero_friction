# PropertyGroupReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from metering_client.models.property_group_reference import PropertyGroupReference

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupReference from a JSON string
property_group_reference_instance = PropertyGroupReference.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupReference.to_json())

# convert the object into a dict
property_group_reference_dict = property_group_reference_instance.to_dict()
# create an instance of PropertyGroupReference from a dict
property_group_reference_from_dict = PropertyGroupReference.from_dict(property_group_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


