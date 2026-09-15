# AccountingCompanyLinkDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**external_id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**bank_journal** | [**AccountingCompanyLinkAdditionalDto**](AccountingCompanyLinkAdditionalDto.md) |  | [optional] 
**sales_journal** | [**AccountingCompanyLinkAdditionalDto**](AccountingCompanyLinkAdditionalDto.md) |  | [optional] 
**default_collection_account** | [**AccountingCompanyLinkAdditionalDto**](AccountingCompanyLinkAdditionalDto.md) |  | [optional] 

## Example

```python
from configuration_client.models.accounting_company_link_dto import AccountingCompanyLinkDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingCompanyLinkDTO from a JSON string
accounting_company_link_dto_instance = AccountingCompanyLinkDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingCompanyLinkDTO.to_json())

# convert the object into a dict
accounting_company_link_dto_dict = accounting_company_link_dto_instance.to_dict()
# create an instance of AccountingCompanyLinkDTO from a dict
accounting_company_link_dto_from_dict = AccountingCompanyLinkDTO.from_dict(accounting_company_link_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


