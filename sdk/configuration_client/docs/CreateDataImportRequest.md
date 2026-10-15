# CreateDataImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**disabled** | **bool** |  | [optional] 
**automatic_processing** | **bool** |  | [optional] 
**custom_file_format_id** | **str** |  | 
**metering_format_type** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) |  | 
**parameters** | [**DataImportParametersDTO**](DataImportParametersDTO.md) |  | 

## Example

```python
from configuration_client.models.create_data_import_request import CreateDataImportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDataImportRequest from a JSON string
create_data_import_request_instance = CreateDataImportRequest.from_json(json)
# print the JSON string representation of the object
print(CreateDataImportRequest.to_json())

# convert the object into a dict
create_data_import_request_dict = create_data_import_request_instance.to_dict()
# create an instance of CreateDataImportRequest from a dict
create_data_import_request_from_dict = CreateDataImportRequest.from_dict(create_data_import_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


