# TariffImportQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.tariff_import_query_params import TariffImportQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of TariffImportQueryParams from a JSON string
tariff_import_query_params_instance = TariffImportQueryParams.from_json(json)
# print the JSON string representation of the object
print(TariffImportQueryParams.to_json())

# convert the object into a dict
tariff_import_query_params_dict = tariff_import_query_params_instance.to_dict()
# create an instance of TariffImportQueryParams from a dict
tariff_import_query_params_from_dict = TariffImportQueryParams.from_dict(tariff_import_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


