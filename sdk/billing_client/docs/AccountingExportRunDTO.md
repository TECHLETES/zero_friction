# AccountingExportRunDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  | [optional]
**provider_id** | **str** |  | [optional]
**status** | [**AccountingExportRunStatus**](AccountingExportRunStatus.md) |  | [optional]
**parameters** | [**BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO**](BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO.md) |  | [optional]
**errors** | [**List[AccountingExportRunErrorDTO]**](AccountingExportRunErrorDTO.md) |  | [optional]
**completed_date** | **datetime** |  | [optional]
**started_date** | **datetime** |  | [optional]
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
from billing_client.models.accounting_export_run_dto import AccountingExportRunDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingExportRunDTO from a JSON string
accounting_export_run_dto_instance = AccountingExportRunDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingExportRunDTO.to_json())

# convert the object into a dict
accounting_export_run_dto_dict = accounting_export_run_dto_instance.to_dict()
# create an instance of AccountingExportRunDTO from a dict
accounting_export_run_dto_from_dict = AccountingExportRunDTO.from_dict(accounting_export_run_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
