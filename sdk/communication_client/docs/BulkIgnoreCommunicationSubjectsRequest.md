# BulkIgnoreCommunicationSubjectsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCommunicationSubjectsQueryParams**](GetCommunicationSubjectsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from communication_client.models.bulk_ignore_communication_subjects_request import BulkIgnoreCommunicationSubjectsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkIgnoreCommunicationSubjectsRequest from a JSON string
bulk_ignore_communication_subjects_request_instance = BulkIgnoreCommunicationSubjectsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkIgnoreCommunicationSubjectsRequest.to_json())

# convert the object into a dict
bulk_ignore_communication_subjects_request_dict = bulk_ignore_communication_subjects_request_instance.to_dict()
# create an instance of BulkIgnoreCommunicationSubjectsRequest from a dict
bulk_ignore_communication_subjects_request_from_dict = BulkIgnoreCommunicationSubjectsRequest.from_dict(bulk_ignore_communication_subjects_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


