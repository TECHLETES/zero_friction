# CreateItemCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_item_code_request import CreateItemCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateItemCodeRequest from a JSON string
create_item_code_request_instance = CreateItemCodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateItemCodeRequest.to_json())

# convert the object into a dict
create_item_code_request_dict = create_item_code_request_instance.to_dict()
# create an instance of CreateItemCodeRequest from a dict
create_item_code_request_from_dict = CreateItemCodeRequest.from_dict(create_item_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


