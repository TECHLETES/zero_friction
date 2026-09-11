# CreateProjectCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_codes** | [**List[CreateProjectCodeRequest]**](CreateProjectCodeRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.create_project_codes_request import CreateProjectCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectCodesRequest from a JSON string
create_project_codes_request_instance = CreateProjectCodesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateProjectCodesRequest.to_json())

# convert the object into a dict
create_project_codes_request_dict = create_project_codes_request_instance.to_dict()
# create an instance of CreateProjectCodesRequest from a dict
create_project_codes_request_from_dict = CreateProjectCodesRequest.from_dict(create_project_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
