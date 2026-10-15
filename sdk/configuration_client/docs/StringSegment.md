# StringSegment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**buffer** | **str** |  | [optional] 
**offset** | **int** |  | [optional] 
**length** | **int** |  | [optional] 
**value** | **str** |  | [optional] 
**has_value** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.string_segment import StringSegment

# TODO update the JSON string below
json = "{}"
# create an instance of StringSegment from a JSON string
string_segment_instance = StringSegment.from_json(json)
# print the JSON string representation of the object
print(StringSegment.to_json())

# convert the object into a dict
string_segment_dict = string_segment_instance.to_dict()
# create an instance of StringSegment from a dict
string_segment_from_dict = StringSegment.from_dict(string_segment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


