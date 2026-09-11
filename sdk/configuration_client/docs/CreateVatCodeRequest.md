# CreateVatCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  |
**description** | **str** |  | [optional]
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  |

## Example

```python
from configuration_client.models.create_vat_code_request import CreateVatCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVatCodeRequest from a JSON string
create_vat_code_request_instance = CreateVatCodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateVatCodeRequest.to_json())

# convert the object into a dict
create_vat_code_request_dict = create_vat_code_request_instance.to_dict()
# create an instance of CreateVatCodeRequest from a dict
create_vat_code_request_from_dict = CreateVatCodeRequest.from_dict(create_vat_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
