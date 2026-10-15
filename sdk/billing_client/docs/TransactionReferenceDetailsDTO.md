# TransactionReferenceDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_reference_type** | [**TransactionReferenceType**](TransactionReferenceType.md) |  | 
**transaction_reference_id** | **str** |  | 
**parameters** | [**TransactionReferenceParametersDTO**](TransactionReferenceParametersDTO.md) |  | 

## Example

```python
from billing_client.models.transaction_reference_details_dto import TransactionReferenceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceDetailsDTO from a JSON string
transaction_reference_details_dto_instance = TransactionReferenceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceDetailsDTO.to_json())

# convert the object into a dict
transaction_reference_details_dto_dict = transaction_reference_details_dto_instance.to_dict()
# create an instance of TransactionReferenceDetailsDTO from a dict
transaction_reference_details_dto_from_dict = TransactionReferenceDetailsDTO.from_dict(transaction_reference_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


