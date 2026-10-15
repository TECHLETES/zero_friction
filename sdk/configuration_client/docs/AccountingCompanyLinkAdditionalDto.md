# AccountingCompanyLinkAdditionalDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.accounting_company_link_additional_dto import AccountingCompanyLinkAdditionalDto

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingCompanyLinkAdditionalDto from a JSON string
accounting_company_link_additional_dto_instance = AccountingCompanyLinkAdditionalDto.from_json(json)
# print the JSON string representation of the object
print(AccountingCompanyLinkAdditionalDto.to_json())

# convert the object into a dict
accounting_company_link_additional_dto_dict = accounting_company_link_additional_dto_instance.to_dict()
# create an instance of AccountingCompanyLinkAdditionalDto from a dict
accounting_company_link_additional_dto_from_dict = AccountingCompanyLinkAdditionalDto.from_dict(accounting_company_link_additional_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


