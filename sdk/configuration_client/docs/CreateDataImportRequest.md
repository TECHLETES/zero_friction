# CreateDataImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Unique name of this data import | [optional] 
**disabled** | **bool** |  | [optional] 
**automatic_processing** | **bool** | Indicates if incoming import jobs are automatically processed or if a user has to manually trigger them | [optional] 
**custom_file_format_id** | **str** | When using a file format that deviates from the built-in format, you should fill in this property with the  ID of the custom file format. | [optional] 
**metering_format_type** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) | When using a built-in format, you just need to specify the type of the format here. | [optional] 
**parameters** | **object** |  | [optional] 

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


