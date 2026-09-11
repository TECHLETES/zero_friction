# AccountingCompanyDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional]
**code** | **str** |  | [optional]
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) |  |
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
from configuration_client.models.accounting_company_dto import AccountingCompanyDto

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingCompanyDto from a JSON string
accounting_company_dto_instance = AccountingCompanyDto.from_json(json)
# print the JSON string representation of the object
print(AccountingCompanyDto.to_json())

# convert the object into a dict
accounting_company_dto_dict = accounting_company_dto_instance.to_dict()
# create an instance of AccountingCompanyDto from a dict
accounting_company_dto_from_dict = AccountingCompanyDto.from_dict(accounting_company_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
