# BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**period_start** | **datetime** |  | [optional]
**period_end** | **datetime** |  | [optional]
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional]
**mark_as_exported** | **bool** |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto import BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO from a JSON string
base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto_instance = BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO.to_json())

# convert the object into a dict
base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto_dict = base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto_instance.to_dict()
# create an instance of BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO from a dict
base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto_from_dict = BaseAccountingExportRunParametersDTOBergerLevraultEseditParametersDTO.from_dict(base_accounting_export_run_parameters_dto_berger_levrault_esedit_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
