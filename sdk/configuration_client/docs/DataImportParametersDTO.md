# DataImportParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**email_address_key** | **str** |  | [optional]
**host** | **str** |  |
**port** | **int** |  | [default to 22]
**user_name** | **str** |  |
**password** | **str** |  |
**directory** | **str** |  |
**recurrence** | [**ScheduledJobRecurrence**](ScheduledJobRecurrence.md) |  |
**next_run_date_time** | **datetime** |  |
**protocol** | [**FtpProtocol**](FtpProtocol.md) |  |

## Example

```python
from configuration_client.models.data_import_parameters_dto import DataImportParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportParametersDTO from a JSON string
data_import_parameters_dto_instance = DataImportParametersDTO.from_json(json)
# print the JSON string representation of the object
print(DataImportParametersDTO.to_json())

# convert the object into a dict
data_import_parameters_dto_dict = data_import_parameters_dto_instance.to_dict()
# create an instance of DataImportParametersDTO from a dict
data_import_parameters_dto_from_dict = DataImportParametersDTO.from_dict(data_import_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
