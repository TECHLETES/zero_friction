# LatestCustomerTransactionsResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**latest_open_transactions** | [**List[TransactionDTO]**](TransactionDTO.md) |  | [optional] 
**latest_closed_transactions** | [**List[TransactionDTO]**](TransactionDTO.md) |  | [optional] 
**has_more_open_transactions** | **bool** |  | [optional] 
**has_more_closed_transactions** | **bool** |  | [optional] 
**cash_position** | **float** |  | [optional] 
**cash_position_debit** | **float** |  | [optional] 
**cash_position_credit** | **float** |  | [optional] 

## Example

```python
from billing_client.models.latest_customer_transactions_response_dto import LatestCustomerTransactionsResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of LatestCustomerTransactionsResponseDTO from a JSON string
latest_customer_transactions_response_dto_instance = LatestCustomerTransactionsResponseDTO.from_json(json)
# print the JSON string representation of the object
print(LatestCustomerTransactionsResponseDTO.to_json())

# convert the object into a dict
latest_customer_transactions_response_dto_dict = latest_customer_transactions_response_dto_instance.to_dict()
# create an instance of LatestCustomerTransactionsResponseDTO from a dict
latest_customer_transactions_response_dto_from_dict = LatestCustomerTransactionsResponseDTO.from_dict(latest_customer_transactions_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


