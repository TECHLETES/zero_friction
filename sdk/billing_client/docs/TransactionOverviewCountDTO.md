# TransactionOverviewCountDTO

Represents counts of transactions in different states for overview purposes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | Total number of all transactions | [optional] 
**to_pay** | **int** | Number of transactions pending payment | [optional] 
**to_refund** | **int** | Number of transactions pending refund | [optional] 
**only_open** | **int** | Number of open transactions | [optional] 
**only_closed** | **int** | Number of closed transactions | [optional] 

## Example

```python
from billing_client.models.transaction_overview_count_dto import TransactionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionOverviewCountDTO from a JSON string
transaction_overview_count_dto_instance = TransactionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionOverviewCountDTO.to_json())

# convert the object into a dict
transaction_overview_count_dto_dict = transaction_overview_count_dto_instance.to_dict()
# create an instance of TransactionOverviewCountDTO from a dict
transaction_overview_count_dto_from_dict = TransactionOverviewCountDTO.from_dict(transaction_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


