# OutgoingBankingTransactionOverviewCountDTO

Provides an overview of outgoing banking transaction counts by their status.  This DTO contains aggregated counts of transactions in different states.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | The total number of outgoing banking transactions. | [optional] 
**ready_to_send** | **int** | The number of transactions that are ready to be sent. | [optional] 
**to_confirm** | **int** | The number of transactions waiting for confirmation. | [optional] 
**closed** | **int** | The number of closed transactions. | [optional] 
**date_expired** | **int** | The number of transactions that have expired due to date constraints. | [optional] 
**resolve_issues** | **int** | The number of transactions that have issues requiring resolution. | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_overview_count_dto import OutgoingBankingTransactionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionOverviewCountDTO from a JSON string
outgoing_banking_transaction_overview_count_dto_instance = OutgoingBankingTransactionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionOverviewCountDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_overview_count_dto_dict = outgoing_banking_transaction_overview_count_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionOverviewCountDTO from a dict
outgoing_banking_transaction_overview_count_dto_from_dict = OutgoingBankingTransactionOverviewCountDTO.from_dict(outgoing_banking_transaction_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


