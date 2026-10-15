# IgnoreIncomingMutationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_mutation_ids** | **List[str]** |  | 

## Example

```python
from billing_client.models.ignore_incoming_mutations_request import IgnoreIncomingMutationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreIncomingMutationsRequest from a JSON string
ignore_incoming_mutations_request_instance = IgnoreIncomingMutationsRequest.from_json(json)
# print the JSON string representation of the object
print(IgnoreIncomingMutationsRequest.to_json())

# convert the object into a dict
ignore_incoming_mutations_request_dict = ignore_incoming_mutations_request_instance.to_dict()
# create an instance of IgnoreIncomingMutationsRequest from a dict
ignore_incoming_mutations_request_from_dict = IgnoreIncomingMutationsRequest.from_dict(ignore_incoming_mutations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


