# LinkVatCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vat_code_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.link_vat_code_request import LinkVatCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LinkVatCodeRequest from a JSON string
link_vat_code_request_instance = LinkVatCodeRequest.from_json(json)
# print the JSON string representation of the object
print(LinkVatCodeRequest.to_json())

# convert the object into a dict
link_vat_code_request_dict = link_vat_code_request_instance.to_dict()
# create an instance of LinkVatCodeRequest from a dict
link_vat_code_request_from_dict = LinkVatCodeRequest.from_dict(link_vat_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


