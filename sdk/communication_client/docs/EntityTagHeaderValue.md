# EntityTagHeaderValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | [**StringSegment**](StringSegment.md) |  | [optional] 
**is_weak** | **bool** |  | [optional] 

## Example

```python
from communication_client.models.entity_tag_header_value import EntityTagHeaderValue

# TODO update the JSON string below
json = "{}"
# create an instance of EntityTagHeaderValue from a JSON string
entity_tag_header_value_instance = EntityTagHeaderValue.from_json(json)
# print the JSON string representation of the object
print(EntityTagHeaderValue.to_json())

# convert the object into a dict
entity_tag_header_value_dict = entity_tag_header_value_instance.to_dict()
# create an instance of EntityTagHeaderValue from a dict
entity_tag_header_value_from_dict = EntityTagHeaderValue.from_dict(entity_tag_header_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


