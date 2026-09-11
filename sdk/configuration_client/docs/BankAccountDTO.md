# BankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**bic** | **str** |  | [optional]
**sepa_creditor_id** | **str** |  | [optional]
**is_default** | **bool** |  | [optional]
**deleted** | **bool** |  | [optional]
**accounting_code_id_for_processed_transactions** | **str** |  | [optional]
**accounting_code_id_for_ignored_transactions** | **str** |  | [optional]
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
