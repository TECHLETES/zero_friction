# DataImportParametersDTOFTPSDataImportParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**host** | **str** |  |
**port** | **int** |  | [default to 21]
**user_name** | **str** |  |
**password** | **str** |  |
**protocol** | [**FtpProtocol**](FtpProtocol.md) |  |
**directory** | **str** |  |
**recurrence** | [**ScheduledJobRecurrence**](ScheduledJobRecurrence.md) |  |
**next_run_date_time** | **datetime** |  |

## Example

```python
from configuration_client.models.data_import_parameters_dtoftps_data_import_parameters_dto import DataImportParametersDTOFTPSDataImportParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportParametersDTOFTPSDataImportParametersDTO from a JSON string
data_import_parameters_dtoftps_data_import_parameters_dto_instance = DataImportParametersDTOFTPSDataImportParametersDTO.from_json(json)
# print the JSON string representation of the object
print(DataImportParametersDTOFTPSDataImportParametersDTO.to_json())

# convert the object into a dict
data_import_parameters_dtoftps_data_import_parameters_dto_dict = data_import_parameters_dtoftps_data_import_parameters_dto_instance.to_dict()
# create an instance of DataImportParametersDTOFTPSDataImportParametersDTO from a dict
data_import_parameters_dtoftps_data_import_parameters_dto_from_dict = DataImportParametersDTOFTPSDataImportParametersDTO.from_dict(data_import_parameters_dtoftps_data_import_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
