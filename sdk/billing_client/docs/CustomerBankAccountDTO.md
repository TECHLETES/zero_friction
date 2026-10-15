# CustomerBankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**active_mandate** | [**CustomerMandateDTO**](CustomerMandateDTO.md) |  | [optional] 
**customer_mandates** | [**List[CustomerMandateDTO]**](CustomerMandateDTO.md) |  | [optional] 
**iban** | **str** |  | [optional] 
**bic** | **str** |  | [optional] 
**added_from_incoming_banking_transaction** | **bool** |  | [optional] 
**is_default** | **bool** |  | [optional] 
**last_used_date** | **datetime** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

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


