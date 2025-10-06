# SegmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**segment_type** | [**NumberSequenceSegmentType**](NumberSequenceSegmentType.md) |  | [optional] 
**segment_lookup_values** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.segment_dto import SegmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SegmentDTO from a JSON string
segment_dto_instance = SegmentDTO.from_json(json)
# print the JSON string representation of the object
print(SegmentDTO.to_json())

# convert the object into a dict
segment_dto_dict = segment_dto_instance.to_dict()
# create an instance of SegmentDTO from a dict
segment_dto_from_dict = SegmentDTO.from_dict(segment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


