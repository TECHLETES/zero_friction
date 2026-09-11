# CreateProjectCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional]
**description** | **str** |  | [optional]
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.create_project_code_request import CreateProjectCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectCodeRequest from a JSON string
create_project_code_request_instance = CreateProjectCodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateProjectCodeRequest.to_json())

# convert the object into a dict
create_project_code_request_dict = create_project_code_request_instance.to_dict()
# create an instance of CreateProjectCodeRequest from a dict
create_project_code_request_from_dict = CreateProjectCodeRequest.from_dict(create_project_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
