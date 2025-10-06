# MeteringImportOverviewCountDTO

Represents an overview of metering import counts, providing information about the  total records and their respective processing statuses.  Counts take the current filter into account

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | Total amount of metering imports. | [optional] 
**to_process** | **int** | The total count of metering imports that still need processing. | [optional] 
**processed** | **int** | The total count of processed metering imports, without any issue. | [optional] 
**format_issues** | **int** | Total count of metering imports that have issues related to formatting | [optional] 
**issues** | **int** | Total count of metering imports that have critical issues | [optional] 
**invalid** | **int** | Total count of metering imports that have one or more invalid measurements. | [optional] 

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


