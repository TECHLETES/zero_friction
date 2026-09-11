# ManuallyProcessCollectionCaseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**execute_until** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.manually_process_collection_case_request import ManuallyProcessCollectionCaseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ManuallyProcessCollectionCaseRequest from a JSON string
manually_process_collection_case_request_instance = ManuallyProcessCollectionCaseRequest.from_json(json)
# print the JSON string representation of the object
print(ManuallyProcessCollectionCaseRequest.to_json())

# convert the object into a dict
manually_process_collection_case_request_dict = manually_process_collection_case_request_instance.to_dict()
# create an instance of ManuallyProcessCollectionCaseRequest from a dict
manually_process_collection_case_request_from_dict = ManuallyProcessCollectionCaseRequest.from_dict(manually_process_collection_case_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
