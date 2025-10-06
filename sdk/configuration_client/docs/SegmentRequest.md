# SegmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**segment_type** | [**NumberSequenceSegmentType**](NumberSequenceSegmentType.md) |  | [optional] 
**segment_lookup_values** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.segment_request import SegmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SegmentRequest from a JSON string
segment_request_instance = SegmentRequest.from_json(json)
# print the JSON string representation of the object
print(SegmentRequest.to_json())

# convert the object into a dict
segment_request_dict = segment_request_instance.to_dict()
# create an instance of SegmentRequest from a dict
segment_request_from_dict = SegmentRequest.from_dict(segment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


