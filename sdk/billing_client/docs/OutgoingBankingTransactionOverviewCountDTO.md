# OutgoingBankingTransactionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**ready_to_send** | **int** |  | [optional] 
**to_confirm** | **int** |  | [optional] 
**closed** | **int** |  | [optional] 
**date_expired** | **int** |  | [optional] 
**resolve_issues** | **int** |  | [optional] 

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


