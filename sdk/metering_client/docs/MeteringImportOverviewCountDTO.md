# MeteringImportOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**to_process** | **int** |  | [optional] 
**processed** | **int** |  | [optional] 
**format_issues** | **int** |  | [optional] 
**issues** | **int** |  | [optional] 
**invalid** | **int** |  | [optional] 

## Example

```python
from metering_client.models.metering_import_overview_count_dto import MeteringImportOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportOverviewCountDTO from a JSON string
metering_import_overview_count_dto_instance = MeteringImportOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportOverviewCountDTO.to_json())

# convert the object into a dict
metering_import_overview_count_dto_dict = metering_import_overview_count_dto_instance.to_dict()
# create an instance of MeteringImportOverviewCountDTO from a dict
metering_import_overview_count_dto_from_dict = MeteringImportOverviewCountDTO.from_dict(metering_import_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


