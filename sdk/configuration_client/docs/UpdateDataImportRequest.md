# UpdateDataImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disabled** | **bool** |  | [optional] 
**automatic_processing** | **bool** | Indicates if incomming import jobs are automatically processed or if a user has to manually trigger them | [optional] 
**custom_file_format_id** | **str** | When using a file format that deviates from the built-in format, you should fill in this property with the  ID of the custom file format. | [optional] 
**metering_format_type** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) | When using a built-in format, you just need to specify the type of the format here. | [optional] 
**parameters** | **object** |  | [optional] 

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


