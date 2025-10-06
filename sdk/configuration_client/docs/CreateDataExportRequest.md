# CreateDataExportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**file_format_id** | **str** |  | [optional] 
**parameters** | [**BaseDataExportParametersDTO**](BaseDataExportParametersDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_data_export_request import CreateDataExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDataExportRequest from a JSON string
create_data_export_request_instance = CreateDataExportRequest.from_json(json)
# print the JSON string representation of the object
print(CreateDataExportRequest.to_json())

# convert the object into a dict
create_data_export_request_dict = create_data_export_request_instance.to_dict()
# create an instance of CreateDataExportRequest from a dict
create_data_export_request_from_dict = CreateDataExportRequest.from_dict(create_data_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


