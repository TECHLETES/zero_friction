# CreateItemCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_codes** | [**List[CreateItemCodeRequest]**](CreateItemCodeRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_item_codes_request import CreateItemCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateItemCodesRequest from a JSON string
create_item_codes_request_instance = CreateItemCodesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateItemCodesRequest.to_json())

# convert the object into a dict
create_item_codes_request_dict = create_item_codes_request_instance.to_dict()
# create an instance of CreateItemCodesRequest from a dict
create_item_codes_request_from_dict = CreateItemCodesRequest.from_dict(create_item_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


