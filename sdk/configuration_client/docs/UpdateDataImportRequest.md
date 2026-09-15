# UpdateDataImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disabled** | **bool** |  | [optional] 
**automatic_processing** | **bool** |  | [optional] 
**custom_file_format_id** | **str** |  | 
**metering_format_type** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) |  | 
**parameters** | [**DataImportParametersDTO**](DataImportParametersDTO.md) |  | 

## Example

```python
from configuration_client.models.update_data_import_request import UpdateDataImportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDataImportRequest from a JSON string
update_data_import_request_instance = UpdateDataImportRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateDataImportRequest.to_json())

# convert the object into a dict
update_data_import_request_dict = update_data_import_request_instance.to_dict()
# create an instance of UpdateDataImportRequest from a dict
update_data_import_request_from_dict = UpdateDataImportRequest.from_dict(update_data_import_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


