# UpdateDataExportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_format_id** | **str** |  | [optional] 
**parameters** | [**BaseDataExportParametersDTO**](BaseDataExportParametersDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_data_export_request import UpdateDataExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDataExportRequest from a JSON string
update_data_export_request_instance = UpdateDataExportRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateDataExportRequest.to_json())

# convert the object into a dict
update_data_export_request_dict = update_data_export_request_instance.to_dict()
# create an instance of UpdateDataExportRequest from a dict
update_data_export_request_from_dict = UpdateDataExportRequest.from_dict(update_data_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


