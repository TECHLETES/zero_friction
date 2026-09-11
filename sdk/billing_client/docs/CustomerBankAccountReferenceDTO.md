# CustomerBankAccountReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**value** | **str** |  | [optional]

## Example

```python
from billing_client.models.customer_bank_account_reference_dto import CustomerBankAccountReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBankAccountReferenceDTO from a JSON string
customer_bank_account_reference_dto_instance = CustomerBankAccountReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBankAccountReferenceDTO.to_json())

# convert the object into a dict
customer_bank_account_reference_dto_dict = customer_bank_account_reference_dto_instance.to_dict()
# create an instance of CustomerBankAccountReferenceDTO from a dict
customer_bank_account_reference_dto_from_dict = CustomerBankAccountReferenceDTO.from_dict(customer_bank_account_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
