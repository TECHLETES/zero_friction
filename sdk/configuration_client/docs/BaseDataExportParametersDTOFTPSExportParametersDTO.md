# BaseDataExportParametersDTOFTPSExportParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**host** | **str** |  | 
**port** | **int** |  | [default to 21]
**protocol** | [**FtpProtocol**](FtpProtocol.md) |  | 
**user_name** | **str** |  | 
**password** | **str** |  | 
**directory** | **str** |  | 
**auto_move_after_generation** | **bool** |  | 
**zip_files** | **bool** |  | 
**auto_assign_entities_to_export** | **bool** |  | 

## Example

```python
from configuration_client.models.base_data_export_parameters_dtoftps_export_parameters_dto import BaseDataExportParametersDTOFTPSExportParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseDataExportParametersDTOFTPSExportParametersDTO from a JSON string
base_data_export_parameters_dtoftps_export_parameters_dto_instance = BaseDataExportParametersDTOFTPSExportParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseDataExportParametersDTOFTPSExportParametersDTO.to_json())

# convert the object into a dict
base_data_export_parameters_dtoftps_export_parameters_dto_dict = base_data_export_parameters_dtoftps_export_parameters_dto_instance.to_dict()
# create an instance of BaseDataExportParametersDTOFTPSExportParametersDTO from a dict
base_data_export_parameters_dtoftps_export_parameters_dto_from_dict = BaseDataExportParametersDTOFTPSExportParametersDTO.from_dict(base_data_export_parameters_dtoftps_export_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


