# CompanyBankAccountReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**iban** | **str** |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.company_bank_account_reference_dto import CompanyBankAccountReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyBankAccountReferenceDTO from a JSON string
company_bank_account_reference_dto_instance = CompanyBankAccountReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(CompanyBankAccountReferenceDTO.to_json())

# convert the object into a dict
company_bank_account_reference_dto_dict = company_bank_account_reference_dto_instance.to_dict()
# create an instance of CompanyBankAccountReferenceDTO from a dict
company_bank_account_reference_dto_from_dict = CompanyBankAccountReferenceDTO.from_dict(company_bank_account_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


