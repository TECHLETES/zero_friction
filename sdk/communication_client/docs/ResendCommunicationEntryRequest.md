# ResendCommunicationEntryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_entry_id** | **str** |  | [optional]
**subject_id** | **str** |  | [optional]
**subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**subject_subtype** | **str** |  | [optional]
**forced_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]

## Example

```python
from communication_client.models.resend_communication_entry_request import ResendCommunicationEntryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResendCommunicationEntryRequest from a JSON string
resend_communication_entry_request_instance = ResendCommunicationEntryRequest.from_json(json)
# print the JSON string representation of the object
print(ResendCommunicationEntryRequest.to_json())

# convert the object into a dict
resend_communication_entry_request_dict = resend_communication_entry_request_instance.to_dict()
# create an instance of ResendCommunicationEntryRequest from a dict
resend_communication_entry_request_from_dict = ResendCommunicationEntryRequest.from_dict(resend_communication_entry_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
