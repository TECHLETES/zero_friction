# UpdateOutgoingMutationEntryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **float** |  |
**payment_reference** | **str** |  |
**iban** | **str** |  | [optional]

## Example

```python
from billing_client.models.update_outgoing_mutation_entry_request import UpdateOutgoingMutationEntryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOutgoingMutationEntryRequest from a JSON string
update_outgoing_mutation_entry_request_instance = UpdateOutgoingMutationEntryRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOutgoingMutationEntryRequest.to_json())

# convert the object into a dict
update_outgoing_mutation_entry_request_dict = update_outgoing_mutation_entry_request_instance.to_dict()
# create an instance of UpdateOutgoingMutationEntryRequest from a dict
update_outgoing_mutation_entry_request_from_dict = UpdateOutgoingMutationEntryRequest.from_dict(update_outgoing_mutation_entry_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
