# LatestCustomerTransactionsResponseDTO

Represents a response containing the latest transactions for a customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**latest_open_transactions** | [**List[TransactionDTO]**](TransactionDTO.md) | List of the most recent open transactions for the customer | [optional] 
**latest_closed_transactions** | [**List[TransactionDTO]**](TransactionDTO.md) | List of the most recent closed transactions for the customer | [optional] 
**has_more_open_transactions** | **bool** | Indicates if there are more open transactions beyond the ones returned | [optional] 
**has_more_closed_transactions** | **bool** | Indicates if there are more closed transactions beyond the ones returned | [optional] 
**cash_position** | **float** | Current cash position of the customer (net amount) | [optional] 
**cash_position_debit** | **float** | Current debit cash position of the customer (amount owed) | [optional] 
**cash_position_credit** | **float** | Current credit cash position of the customer (amount available) | [optional] 

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


