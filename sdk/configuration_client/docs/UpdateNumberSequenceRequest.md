# UpdateNumberSequenceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_value** | **int** |  | [optional] 
**segments** | [**List[SegmentRequest]**](SegmentRequest.md) |  | [optional] 
**format_string** | **str** |  | [optional] 
**reference_entity** | [**NumberSequenceReferenceEntity**](NumberSequenceReferenceEntity.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_number_sequence_request import UpdateNumberSequenceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateNumberSequenceRequest from a JSON string
update_number_sequence_request_instance = UpdateNumberSequenceRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateNumberSequenceRequest.to_json())

# convert the object into a dict
update_number_sequence_request_dict = update_number_sequence_request_instance.to_dict()
# create an instance of UpdateNumberSequenceRequest from a dict
update_number_sequence_request_from_dict = UpdateNumberSequenceRequest.from_dict(update_number_sequence_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


