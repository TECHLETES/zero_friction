# MarkTransactionsObsoleteRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**obsolete_before_date** | **date** |  | [optional]

## Example

```python
from billing_client.models.mark_transactions_obsolete_request import MarkTransactionsObsoleteRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MarkTransactionsObsoleteRequest from a JSON string
mark_transactions_obsolete_request_instance = MarkTransactionsObsoleteRequest.from_json(json)
# print the JSON string representation of the object
print(MarkTransactionsObsoleteRequest.to_json())

# convert the object into a dict
mark_transactions_obsolete_request_dict = mark_transactions_obsolete_request_instance.to_dict()
# create an instance of MarkTransactionsObsoleteRequest from a dict
mark_transactions_obsolete_request_from_dict = MarkTransactionsObsoleteRequest.from_dict(mark_transactions_obsolete_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
