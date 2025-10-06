# MeteringImportIssuesCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invalid_format_errors** | [**List[ErrorCodeCount]**](ErrorCodeCount.md) |  | [optional] 
**invalid_data_errors** | [**List[ErrorCodeCount]**](ErrorCodeCount.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_import_issues_count_dto import MeteringImportIssuesCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportIssuesCountDTO from a JSON string
metering_import_issues_count_dto_instance = MeteringImportIssuesCountDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportIssuesCountDTO.to_json())

# convert the object into a dict
metering_import_issues_count_dto_dict = metering_import_issues_count_dto_instance.to_dict()
# create an instance of MeteringImportIssuesCountDTO from a dict
metering_import_issues_count_dto_from_dict = MeteringImportIssuesCountDTO.from_dict(metering_import_issues_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


