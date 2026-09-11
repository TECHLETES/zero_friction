# AccountingCompanyMappingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**iban** | **str** |  | [optional]
**accounting_company** | [**AccountingCompanyLinkDTO**](AccountingCompanyLinkDTO.md) |  | [optional]
**accounting_status** | [**AccountingMappingStatus**](AccountingMappingStatus.md) |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.accounting_company_mapping_item_dto import AccountingCompanyMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingCompanyMappingItemDTO from a JSON string
accounting_company_mapping_item_dto_instance = AccountingCompanyMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingCompanyMappingItemDTO.to_json())

# convert the object into a dict
accounting_company_mapping_item_dto_dict = accounting_company_mapping_item_dto_instance.to_dict()
# create an instance of AccountingCompanyMappingItemDTO from a dict
accounting_company_mapping_item_dto_from_dict = AccountingCompanyMappingItemDTO.from_dict(accounting_company_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
