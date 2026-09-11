# IncomingBankingTransactionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional]
**ready** | **int** |  | [optional]
**resolve_issues** | **int** |  | [optional]
**closed** | **int** |  | [optional]
**attention** | **int** |  | [optional]

## Example

```python
from billing_client.models.incoming_banking_transaction_overview_count_dto import IncomingBankingTransactionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionOverviewCountDTO from a JSON string
incoming_banking_transaction_overview_count_dto_instance = IncomingBankingTransactionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionOverviewCountDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_overview_count_dto_dict = incoming_banking_transaction_overview_count_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionOverviewCountDTO from a dict
incoming_banking_transaction_overview_count_dto_from_dict = IncomingBankingTransactionOverviewCountDTO.from_dict(incoming_banking_transaction_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
