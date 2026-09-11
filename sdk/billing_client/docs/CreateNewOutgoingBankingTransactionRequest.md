# CreateNewOutgoingBankingTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_banking_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  |
**collection_date** | **datetime** |  |
**company_bank_account_id** | **str** |  |
**entries** | [**List[AddEntryToOutgoingBankingTransactionRequest]**](AddEntryToOutgoingBankingTransactionRequest.md) |  |

## Example

```python
from billing_client.models.create_new_outgoing_banking_transaction_request import CreateNewOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateNewOutgoingBankingTransactionRequest from a JSON string
create_new_outgoing_banking_transaction_request_instance = CreateNewOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(CreateNewOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
create_new_outgoing_banking_transaction_request_dict = create_new_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of CreateNewOutgoingBankingTransactionRequest from a dict
create_new_outgoing_banking_transaction_request_from_dict = CreateNewOutgoingBankingTransactionRequest.from_dict(create_new_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
