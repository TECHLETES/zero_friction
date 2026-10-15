# BulkSendCommunicationSubjectsViaRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCommunicationSubjectsQueryParams**](GetCommunicationSubjectsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**forced_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 

## Example

```python
from communication_client.models.bulk_send_communication_subjects_via_request import BulkSendCommunicationSubjectsViaRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSendCommunicationSubjectsViaRequest from a JSON string
bulk_send_communication_subjects_via_request_instance = BulkSendCommunicationSubjectsViaRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSendCommunicationSubjectsViaRequest.to_json())

# convert the object into a dict
bulk_send_communication_subjects_via_request_dict = bulk_send_communication_subjects_via_request_instance.to_dict()
# create an instance of BulkSendCommunicationSubjectsViaRequest from a dict
bulk_send_communication_subjects_via_request_from_dict = BulkSendCommunicationSubjectsViaRequest.from_dict(bulk_send_communication_subjects_via_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


