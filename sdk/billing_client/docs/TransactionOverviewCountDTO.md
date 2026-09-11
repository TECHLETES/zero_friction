# TransactionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**to_pay** | **int** |  | [optional] 
**to_refund** | **int** |  | [optional] 
**only_open** | **int** |  | [optional] 
**only_closed** | **int** |  | [optional] 
**exported** | **int** |  | [optional] 
**failed_exporting** | **int** |  | [optional] 

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


