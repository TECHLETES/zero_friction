# SettledTransactionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** |  | 
**settled_amount** | **float** |  | [optional] 
**transaction_reference_type** | [**TransactionReferenceType**](TransactionReferenceType.md) |  | 
**transaction_reference_id** | **str** |  | 
**transaction_reference_display_name** | **str** |  | 
**transaction_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.settled_transaction_dto import SettledTransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SettledTransactionDTO from a JSON string
settled_transaction_dto_instance = SettledTransactionDTO.from_json(json)
# print the JSON string representation of the object
print(SettledTransactionDTO.to_json())

# convert the object into a dict
settled_transaction_dto_dict = settled_transaction_dto_instance.to_dict()
# create an instance of SettledTransactionDTO from a dict
settled_transaction_dto_from_dict = SettledTransactionDTO.from_dict(settled_transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


