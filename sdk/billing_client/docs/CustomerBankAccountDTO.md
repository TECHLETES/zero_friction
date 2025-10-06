# CustomerBankAccountDTO

Represents a customer's bank account information.  This DTO contains details about the bank account, associated mandates, and usage information.

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
**customer_id** | **str** | The unique identifier of the customer associated with this bank account. | [optional] 
**active_mandate** | [**CustomerMandateDTO**](CustomerMandateDTO.md) | The currently active mandate for this bank account. | [optional] 
**customer_mandates** | [**List[CustomerMandateDTO]**](CustomerMandateDTO.md) | List of all mandates associated with this bank account. | [optional] 
**iban** | **str** | The International Bank Account Number (IBAN) for this account. | [optional] 
**bic** | **str** | The Bank Identifier Code (BIC) for this account. | [optional] 
**added_from_incoming_banking_transaction** | **bool** | Indicates whether this bank account was added from an incoming banking transaction. | [optional] 
**is_default** | **bool** | Indicates whether this is the default bank account for the customer. | [optional] 
**last_used_date** | **datetime** | The date and time when this bank account was last used. | [optional] 

## Example

```python
from billing_client.models.customer_bank_account_dto import CustomerBankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBankAccountDTO from a JSON string
customer_bank_account_dto_instance = CustomerBankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBankAccountDTO.to_json())

# convert the object into a dict
customer_bank_account_dto_dict = customer_bank_account_dto_instance.to_dict()
# create an instance of CustomerBankAccountDTO from a dict
customer_bank_account_dto_from_dict = CustomerBankAccountDTO.from_dict(customer_bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


