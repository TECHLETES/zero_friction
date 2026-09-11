# CreateVatCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vat_codes** | [**List[CreateVatCodeRequest]**](CreateVatCodeRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.create_vat_codes_request import CreateVatCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateVatCodesRequest from a JSON string
create_vat_codes_request_instance = CreateVatCodesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateVatCodesRequest.to_json())

# convert the object into a dict
create_vat_codes_request_dict = create_vat_codes_request_instance.to_dict()
# create an instance of CreateVatCodesRequest from a dict
create_vat_codes_request_from_dict = CreateVatCodesRequest.from_dict(create_vat_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
