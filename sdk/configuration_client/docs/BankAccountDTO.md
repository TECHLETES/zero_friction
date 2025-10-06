# BankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**iban** | **str** |  | [optional] 
**account_holder** | **str** |  | [optional] 
**bic** | **str** |  | [optional] 
**sepa_creditor_id** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 
**deleted** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.bank_account_dto import BankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountDTO from a JSON string
bank_account_dto_instance = BankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(BankAccountDTO.to_json())

# convert the object into a dict
bank_account_dto_dict = bank_account_dto_instance.to_dict()
# create an instance of BankAccountDTO from a dict
bank_account_dto_from_dict = BankAccountDTO.from_dict(bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


