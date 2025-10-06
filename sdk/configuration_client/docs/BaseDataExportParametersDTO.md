# BaseDataExportParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_move_after_generation** | **bool** |  | 
**zip_files** | **bool** |  | 
**auto_assign_entities_to_export** | **bool** |  | 

## Example

```python
from configuration_client.models.base_data_export_parameters_dto import BaseDataExportParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseDataExportParametersDTO from a JSON string
base_data_export_parameters_dto_instance = BaseDataExportParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseDataExportParametersDTO.to_json())

# convert the object into a dict
base_data_export_parameters_dto_dict = base_data_export_parameters_dto_instance.to_dict()
# create an instance of BaseDataExportParametersDTO from a dict
base_data_export_parameters_dto_from_dict = BaseDataExportParametersDTO.from_dict(base_data_export_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


