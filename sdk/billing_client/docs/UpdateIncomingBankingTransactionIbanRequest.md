# UpdateIncomingBankingTransactionIbanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  |
**iban** | **str** |  |
**confirm** | **bool** |  | [optional]

## Example

```python
from billing_client.models.update_incoming_banking_transaction_iban_request import UpdateIncomingBankingTransactionIbanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateIncomingBankingTransactionIbanRequest from a JSON string
update_incoming_banking_transaction_iban_request_instance = UpdateIncomingBankingTransactionIbanRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateIncomingBankingTransactionIbanRequest.to_json())

# convert the object into a dict
update_incoming_banking_transaction_iban_request_dict = update_incoming_banking_transaction_iban_request_instance.to_dict()
# create an instance of UpdateIncomingBankingTransactionIbanRequest from a dict
update_incoming_banking_transaction_iban_request_from_dict = UpdateIncomingBankingTransactionIbanRequest.from_dict(update_incoming_banking_transaction_iban_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
