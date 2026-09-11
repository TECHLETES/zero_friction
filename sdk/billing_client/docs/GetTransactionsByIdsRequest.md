# GetTransactionsByIdsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_ids** | **List[str]** |  | [optional]
**order_by** | **str** |  | [optional]

## Example

```python
from billing_client.models.get_transactions_by_ids_request import GetTransactionsByIdsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetTransactionsByIdsRequest from a JSON string
get_transactions_by_ids_request_instance = GetTransactionsByIdsRequest.from_json(json)
# print the JSON string representation of the object
print(GetTransactionsByIdsRequest.to_json())

# convert the object into a dict
get_transactions_by_ids_request_dict = get_transactions_by_ids_request_instance.to_dict()
# create an instance of GetTransactionsByIdsRequest from a dict
get_transactions_by_ids_request_from_dict = GetTransactionsByIdsRequest.from_dict(get_transactions_by_ids_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
